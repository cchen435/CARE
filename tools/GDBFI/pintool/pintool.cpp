/*BEGIN_LEGAL
Intel Open Source License

Copyright (c) 2002-2018 Intel Corporation. All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.  Redistributions
in binary form must reproduce the above copyright notice, this list of
conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.  Neither the name of
the Intel Corporation nor the names of its contributors may be used to
endorse or promote products derived from this software without
specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE INTEL OR
ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
END_LEGAL */
//
// This tool counts the number of times a routine is executed and
// the number of instructions executed in a routine
//

#include <string.h>
#include <fstream>
#include <iomanip>
#include <iostream>

#include "pin.H"

static int bbls = 0;
/**
 * it is too large to log a map of instruction id to its address
 * so we are to record the number of executions for each instruction
 */
typedef struct _ins {
  ADDRINT addr;
  UINT8 size;
  std::string str;
  INT8 MemWrite;
  INT8 MemRead;
  BOOL Candidate;
} care_ins_t;

typedef struct _bbl {
  care_ins_t *instructions;
  std::string rtn;
  UINT64 counter;
  UINT8 num;
  struct _bbl *next;
} care_bbl_t;
care_bbl_t *bbl_list = nullptr;

std::vector<std::string> skipped_img, skipped_rtn;

KNOB<std::string> KnovOutputFile(KNOB_MODE_WRITEONCE, "pintool", "o",
                                 "gdbfi.profile",
                                 "specify file name for profiling data");
/**
 * We are interested in main image of a program, not images of libraries.
 * we avoid static linking at compile stage.
 *
 * IMG_TYPE_STATIC: main image linked with -static
 * IMG_TYPE_SHARED: main image linked with shared libraries
 * FIXME: currently the way to check whether the image is a
 *        shared library or not is still unstable.
 *        IMG_TYPE_SHAREDLIB represents for shared libraries,
 *        but also for program linked with -pie flag
 */
static bool isMainImage(IMG img) {
  IMG_TYPE ty = IMG_Type(img);
  return ty == IMG_TYPE_STATIC || ty == IMG_TYPE_SHARED;
}

static bool endsWith(const std::string &s, const std::string &suffix) {
  return s.rfind(suffix) == (s.size() - suffix.size());
}

static bool startsWith(const std::string &s, const std::string &prefix) {
  return s.size() >= prefix.size() && s.compare(0, prefix.size(), prefix) == 0;
}

/**
 * we are not instereted in function from glibc and plt which is for link
 * purpose
 */
static bool isTargetRTN(RTN rtn) {
  if (!RTN_Valid(rtn)) return false;
  std::string name = RTN_Name(rtn);
  if (endsWith(name, "@plt") || endsWith(name, ".plt")) return false;
  if (endsWith(name, ".plt")) return false;
  if (startsWith(name, "__libc") || name == "_fini" || name == "_start" ||
      name == "_init" || name == "__do_global_dtors_aux" ||
      name == "_dl_relocate_static_pie")
    return false;
  return true;
}

static BOOL isCandidateInsn(INS ins) {
  UINT32 NumWRegs = INS_MaxNumWRegs(ins);
  if (NumWRegs == 0) return 0;
  REG wreg = INS_RegW(ins, 0);
  // return (REG_is_gr8(wreg) | REG_is_gr16(wreg) | REG_is_gr32(wreg) |
  // REG_is_gr64(wreg));
  return !REG_is_fr(wreg);
}

VOID bbl_profile(UINT64 *counter) { (*counter)++; }

VOID ImageLoad(IMG img, VOID *V) {
  if (!isMainImage(img)) {
    skipped_img.push_back(IMG_Name(img));
    return;
  }
  std::cerr << "Instrument the image: " << IMG_Name(img) << "\n";
  for (SEC sec = IMG_SecHead(img); SEC_Valid(sec); sec = SEC_Next(sec)) {
    for (RTN rtn = SEC_RtnHead(sec); RTN_Valid(rtn); rtn = RTN_Next(rtn)) {
      if (!isTargetRTN(rtn)) {
        skipped_rtn.push_back(RTN_Name(rtn));
        continue;
      }
#if 0
      RTN_Open(rtn);

      for (INS ins = RTN_InsHead(rtn); INS_Valid(ins); ins = INS_Next(ins)) {
        // create an entry in counter map for each static instruction
        ADDRINT IP = INS_Address(ins);
      }
      RTN_Close(rtn);
#endif
    }
  }
}

VOID Trace(TRACE trace, VOID *V) {
  RTN rtn = TRACE_Rtn(trace);
  if (!isTargetRTN(rtn)) return;

  SEC sec = RTN_Sec(rtn);
  IMG img = SEC_Img(sec);
  if (!isMainImage(img)) return;

  // add instrumenttion calls for each basic block
  for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl)) {
    bbls++;
    int num_insts = BBL_NumIns(bbl);
    care_bbl_t *buf = new care_bbl_t;
    buf->instructions = new care_ins_t[num_insts];
    buf->rtn = RTN_Name(rtn);
    buf->num = 0;
    buf->counter = 0;

    for (INS ins = BBL_InsHead(bbl); INS_Valid(ins) && buf->num < num_insts;
         ins = INS_Next(ins)) {
#if 0
      UINT32 NumWRegs = INS_MaxNumWRegs(ins);
      fprintf(stdout,
              "Ins: %40s, \tNo. of write regs: %2d, \tFirst ｗrite reg: %7s, "
              "\tCandidate: %d\n",
              INS_Disassemble(ins).c_str(), NumWRegs,
              NumWRegs ? REG_StringShort(INS_RegW(ins, 0)).c_str() : "None",
              isCandidateInsn(ins));
#endif

      buf->instructions[buf->num].addr = INS_Address(ins);
      buf->instructions[buf->num].str = INS_Disassemble(ins);
      buf->instructions[buf->num].size = INS_Size(ins);
      buf->instructions[buf->num].MemRead = INS_IsMemoryRead(ins);
      buf->instructions[buf->num].MemWrite = INS_IsMemoryWrite(ins);
      buf->instructions[buf->num].Candidate = isCandidateInsn(ins);
      buf->num++;
    }

    buf->next = bbl_list;
    bbl_list = buf;
    BBL_InsertCall(bbl, IPOINT_BEFORE, (AFUNPTR)bbl_profile, IARG_PTR,
                   &buf->counter, IARG_END);
  }
}

// This function is called when the application exits
// It prints the name and count for each procedure
VOID Fini(INT32 code, VOID *v) {
  std::cout << "End of Pintool. BBLs: " << bbls << "\n";
  FILE *fp = fopen(KnovOutputFile.Value().c_str(), "w");
  FILE *fp2 = fopen("gdbfi_human.profile", "w");

  fprintf(fp, "%s;%s;%s;%s;%s;%s;%s;%s\n", "addr", "assembly", "size",
          "MemRead", "MemWrite", "function", "executions", "Candidate");
  fprintf(fp2, "%14s%42s%10s%10s%10s%30s%15s%10s\n", "addr", "assembly", "size",
          "MemRead", "MemWrite", "function", "executions", "Candidate");
  for (care_bbl_t *h = bbl_list; h; h = h->next) {
    for (unsigned i = 0; i < h->num; i++) {
      care_ins_t inst = h->instructions[i];
      const char *rtn = h->rtn.c_str();
      const char *str = inst.str.c_str();
      UINT8 size = inst.size;
      UINT8 read = inst.MemRead;
      UINT8 write = inst.MemWrite;
      UINT8 candidate = inst.Candidate;
      ADDRINT addr = inst.addr;
      fprintf(fp, "0x%lx;%s;%u;%d;%d;%s;%lu;%d\n", addr, str, size, read, write,
              rtn, h->counter, candidate);
      fprintf(fp2, "%14lx%42s%10u%10d%10d%30s%15lu%10d\n", addr, str, size,
              read, write, rtn, h->counter, candidate);
    }
  }
  fclose(fp);
  fclose(fp2);
}

/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */

INT32 Usage() {
  cerr << "This Pintool is the profile tool for GDBFI" << endl;
  cerr << endl << KNOB_BASE::StringKnobSummary() << endl;
  return -1;
}

/* ===================================================================== */
/* Main                                                                  */
/* ===================================================================== */

int main(int argc, char *argv[]) {
  // Initialize symbol table code, needed for rtn instrumentation
  PIN_InitSymbols();

  // Initialize pin
  if (PIN_Init(argc, argv)) return Usage();

#if 0
  // Register ImageLoad to be called to instrument img
  IMG_AddInstrumentFunction(ImageLoad, 0);
#endif

  std::cerr << "Instrument at Trace/BBL level.\n";
  TRACE_AddInstrumentFunction(Trace, 0);

  // Register Fini to be called when the application exits
  PIN_AddFiniFunction(Fini, 0);

  // Start the program, never returns
  PIN_StartProgram();

  return 0;
}
