
#include <llvm/IR/InstIterator.h>

#include "LivenessAnalysis.h"

void LivenessAnalysis::doLivenessAnalysis(Function &F) {
  LivenessMap use;

  bool updated = false;

  // initialize the set
  for (inst_iterator I = inst_begin(F), E = inst_end(F); I != E; I++) {
    Instruction *Insn = &*I;
    use[Insn] = std::set<Value *>();
    In[Insn] = std::set<Value *>();
    Out[Insn] = std::set<Value *>();

    if (isa<IntrinsicInst>(Insn)) continue;

    if (auto Call = dyn_cast<CallInst>(Insn)) {
      for (auto i = 0; i < Call->getNumArgOperands(); i++) {
        auto v = Call->getArgOperand(i);
        if (isa<Constant>(v)) continue;
        use[Insn].insert(v);
      }
    } else if (auto Br = dyn_cast<BranchInst>(Insn)) {
      if (Br->isConditional()) use[Insn].insert(Br->getCondition());
    } else {
      for (auto i = Insn->op_begin(), e = Insn->op_end(); i != e; i++) {
        if (isa<Constant>(*i)) continue;
        use[Insn].insert(*i);
      }
    }
  }

  int iter = 0;
  do {
    iter++;
    if (iter % 100 == 0) dbgs() << "Iteration: " << iter << "\n";
    updated = false;
    for (inst_iterator I = inst_begin(F), E = inst_end(F); I != E; I++) {
      Instruction *Insn = &*I;

      // calc diff = out[n] - def[n]
      auto diff = Out[Insn];
      auto it = diff.find(Insn);
      if (it != diff.end()) diff.erase(it);

      // in[n] = use[n] U diff
      auto cin = use[Insn];
      cin.insert(diff.begin(), diff.end());

      if (cin != In[Insn]) {
#if 0
        if (iter % 200 == 0) {
          dbgs() << "\n\nInstruction[In]: " << *Insn;
          dbgs() << "\n\tbefore: ";
          for (auto I : In[Insn]) dbgs() << "\n\t\t" << *I;
          dbgs() << "\n\tafter: ";
          for (auto I : cin) dbgs() << "\n\t\t" << *I;
        }
#endif
        updated = true;
      }

      In[Insn] = cin;

      // out[n] = U {in[S] | s in succ[n]}
      std::set<Value *> tmp;
      for (auto I : getSuccessors(Insn)) {
        if (!I) continue;
        tmp.insert(In[I].begin(), In[I].end());
      }

      if (tmp != Out[Insn]) {
#if 0
        if (iter % 200 == 0) {
          dbgs() << "\n\n\nInstruction[Out]: " << *Insn;
          dbgs() << "\n\tbefore: ";
          for (auto I : Out[Insn]) dbgs() << "\n\t\t" << *I;
          dbgs() << "\n\tafter: ";
          for (auto I : tmp) dbgs() << "\n\t\t" << *I;
        }
#endif
        updated = true;
      }

      Out[Insn] = tmp;
    }
  } while (updated);
  dbgs() << "Total Iterations: " << iter << "\n";

  DEBUG_WITH_TYPE("Liveness", {
    for (inst_iterator I = inst_begin(F), E = inst_end(F); I != E; I++) {
      Instruction *Insn = &*I;
      if (isa<IntrinsicInst>(Insn)) continue;
      dbgs() << "Instruction: " << *Insn;
      dbgs() << "\n\tLive In:";
      for (auto v = In[Insn].begin(); v != In[Insn].end(); v++) {
        dbgs() << "\n\t\t" << **v;
      }
      dbgs() << "\n\tLive Out:";
      for (auto v = Out[Insn].begin(); v != Out[Insn].end(); v++) {
        dbgs() << "\n\t\t" << **v;
      }
      dbgs() << "\n\n";
    }
  });
}

std::set<Instruction *> LivenessAnalysis::getSuccessors(Instruction *I) {
  std::set<Instruction *> ret;
  auto BI = dyn_cast<BranchInst>(I);
  if (BI) {
    for (unsigned i = 0; i < BI->getNumSuccessors(); i++) {
      auto BB = BI->getSuccessor(i);
      Instruction *Insn = dyn_cast<Instruction>(BB->begin());
      assert(Insn);
      ret.insert(Insn);
    }
  } else {
    ret.insert(I->getNextNode());
  }
  return ret;
}

bool LivenessAnalysis::isLiveAtPoint(Instruction *Insn, Instruction *pos) {
  if (Out[pos].find(Insn) == Out[pos].end()) return false;
  return true;
}