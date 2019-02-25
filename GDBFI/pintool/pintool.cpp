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

static uint64_t icount = 0;  // instruction counter

// a buffer for storing pairs of <icount, IP>
static std::map<uint64_t, void *> buf;

KNOB<std::string> KnovOutputFile(KNOB_MODE_WRITEONCE, "pintool", "o",
                                 "gdbfi.profile",
                                 "specify file name for profiling data");

VOID dolog(VOID *IP) {
  icount++;
  buf[icount] = IP;
}

bool isMainImage(IMG img) {
  IMG_TYPE ty = IMG_Type(img);
#ifdef DEBUG_IMG
  std::cout << "Loading Image: " << IMG_Name(img) << " (Type: " << ty << ")\n";
#endif
  /**
   * IMG_TYPE_STATIC: main image linked with -static
   * IMG_TYPE_SHARED: main image linked with shared libraries
   */
  return ty == IMG_TYPE_STATIC || ty == IMG_TYPE_SHARED;
}

bool endsWith(const std::string &s, const std::string &suffix) {
  return s.rfind(suffix) == (s.size() - suffix.size());
}

bool startsWith(const std::string &s, const std::string &prefix) {
  return s.size() >= prefix.size() && s.compare(0, prefix.size(), prefix) == 0;
}

// we would like to skip routines in plt and libc (start routine)
bool isValidRTN(RTN rtn) {
  std::string name = RTN_Name(rtn);
  if (endsWith(name, "@plt") || endsWith(name, ".plt")) return false;
  if (endsWith(name, ".plt")) return false;
  if (startsWith(name, "__libc") || name == "_fini" || name == "_start" ||
      name == "_init" || name == "__do_global_dtors_aux" ||
      name == "_dl_relocate_static_pie")
    return false;
  return true;
}

VOID ImageLoad(IMG img, VOID *V) {
  if (isMainImage(img)) {
#ifdef DEBUG_IMG
    std::cout << "Instrument the image: " << IMG_Name(img) << "\n";
#endif
    for (SEC sec = IMG_SecHead(img); SEC_Valid(sec); sec = SEC_Next(sec)) {
      for (RTN rtn = SEC_RtnHead(sec); RTN_Valid(rtn); rtn = RTN_Next(rtn)) {
#ifdef DEBUG_RTN
        std::cout << "Function: " << RTN_Name(rtn) << "\n";
#endif
        if (!isValidRTN(rtn)) continue;
        RTN_Open(rtn);
        for (INS ins = RTN_InsHead(rtn); INS_Valid(ins); ins = INS_Next(ins)) {
          INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)dolog, IARG_INST_PTR,
                         IARG_END);
        }
        RTN_Close(rtn);
      }
    }
  }
#ifdef DEBUG
  else {
    std::cout << "skip the image: " << IMG_Name(img) << "\n";
  }
#endif
}

// This function is called when the application exits
// It prints the name and count for each procedure
VOID Fini(INT32 code, VOID *v) {
  ofstream OutFile;
  std::cout << "End of Pintool\n\n";
  OutFile.open(KnovOutputFile.Value().c_str());
  OutFile << setw(20) << "ID"
          << "\t" << setw(20) << "IP"
          << "\n";
  for (auto it = buf.begin(); it != buf.end(); it++) {
    OutFile << setw(20) << it->first << "\t" << setw(20) << it->second << "\n";
  }
  OutFile.close();
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

  // Register ImageLoad to be called to instrument img
  IMG_AddInstrumentFunction(ImageLoad, 0);

  // Register Fini to be called when the application exits
  PIN_AddFiniFunction(Fini, 0);

  // Start the program, never returns
  PIN_StartProgram();

  return 0;
}
