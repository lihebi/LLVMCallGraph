#include "hebicg.h"
#include <llvm/Analysis/CallGraph.h>
#include <llvm/IR/LegacyPassManager.h>
#include <llvm/Transforms/IPO/PassManagerBuilder.h>
#include <iostream>
#include <deque>
#include <map>
#include <set>
#include <fstream>


std::string func_name(Function *func) {
  if (func->getName() == "main") return "main";
  DISubprogram *disubprogram = func->getSubprogram();
  if (disubprogram) {
    return "\"" + disubprogram->getName().str() + "\"";
  }
  return "";
}

class HebiCallGraph {
public:
  HebiCallGraph(Function *main_func) : m_main(main_func) {}
  ~HebiCallGraph() {}
  void AddEdge(Function *from, Function *to) {
    m_map[from].insert(to);
  }
  void dump() {
    edge_count=0;
    std::set<Function*> done;
    recur(m_main, done);
    errs() << "================================\n";
    errs() << "total nodes: " << done.size() << "\n";
    errs() << "total edges: " << edge_count << "\n";
  }
  void dumpDot() {
    dotstring.clear();
    dotstring += "digraph {\n";
    std::set<Function*> done;
    recurDot(m_main, done);
    dotstring += "}\n";
    // errs() << dotstring << "\n";
    std::ofstream os;
    os.open("out.dot");
    if (os.is_open()) {
      os << dotstring << "\n";
      os.close();
      errs() << "graph outputed to out.dot\n";
    }
  }
  void recur(Function *func, std::set<Function*> &done) {
    if (done.count(func) == 1) return;
    done.insert(func);
    if (m_map.count(func) == 1) {
      for (Function *f : m_map[func]) {
        errs() << func_name(func) << " -> " << func_name(f) << "\n";
        edge_count++;
        recur(f, done);
      }
    }
  }
  void recurDot(Function *func, std::set<Function*> &done) {
    if (done.count(func) == 1) return;
    done.insert(func);
    if (m_map.count(func) == 1) {
      for (Function *f : m_map[func]) {
        dotstring += func_name(func) + " -> " + func_name(f) + ";\n";
        recurDot(f, done);
      }
    }
  }
  bool has(Function *func) {
    return m_map.count(func) == 1;
  }
private:
  Function *m_main;
  std::map<Function*, std::set<Function*> > m_map;
  std::string dotstring;
  unsigned int edge_count = 0;
};

void basic_call_graph(Module &M) {
  Function *main_func = M.getFunction("main");
  if (!main_func) return;
  HebiCallGraph *cg = new HebiCallGraph(main_func);
  std::deque<Function*> worklist;
  worklist.push_back(main_func);
  while (!worklist.empty()) {
    Function *func = worklist.front();
    worklist.pop_front();
    // loop through the func
    for (Function::iterator it=func->begin(), end=func->end();it!=end;++it) {
      for (BasicBlock::iterator jt=it->begin(), jend=it->end();jt!=jend;++jt) {
        Instruction *inst = &*jt;
        // get all callinst
        if (CallInst *call_inst = dyn_cast<CallInst>(inst)) {
          Function *callee = call_inst->getCalledFunction();
          if (callee) {
            // errs() << "=== callee: " << callee->getName() << "\n";
            // the callinst must have DISubprogram
            DISubprogram *disubprogram = callee->getSubprogram();
            if (disubprogram) {
              // errs() << "=== has DI Subprogram" << "\n";
              // errs() << disubprogram->getName() << "\n";
              cg->AddEdge(func, callee);
              if (!cg->has(callee)) {
                worklist.push_back(callee);
              }
            }
          }
        }
      }
    }
  }
  cg->dump();
  cg->dumpDot();
}

void virtual_call_graph(Module &M) {
  Function *main_func = M.getFunction("main");
  if (!main_func) return;
  // step 1: collect all methods, classes
  HebiCallGraph *cg = new HebiCallGraph(main_func);
  std::deque<Function*> worklist;
  worklist.push_back(main_func);
  while (!worklist.empty()) {
    Function *func = worklist.front();
    worklist.pop_front();
    // loop through the func
    for (Function::iterator it=func->begin(), end=func->end();it!=end;++it) {
      for (BasicBlock::iterator jt=it->begin(), jend=it->end();jt!=jend;++jt) {
        Instruction *inst = &*jt;
        // get all callinst
        if (CallInst *call_inst = dyn_cast<CallInst>(inst)) {
          Function *callee = call_inst->getCalledFunction();
          if (callee) {
            // errs() << "=== callee: " << callee->getName() << "\n";
            // the callinst must have DISubprogram
            DISubprogram *disubprogram = callee->getSubprogram();
            if (disubprogram) {
              // errs() << "=== has DI Subprogram" << "\n";
              // errs() << disubprogram->getName() << "\n";
              cg->AddEdge(func, callee);
              worklist.push_back(callee);
            }
          }
        }
      }
    }
  }
  cg->dumpDot();
}

class HebiCallGraphPass : public ModulePass {
public:
  static char ID;
  HebiCallGraphPass() : ModulePass(ID) {}


  virtual bool runOnModule (Module &M) override {
    // errs() << "hello world\n";
    // for (Function &F : M) {
    //   // errs() <<F.getName()  << "\n";
    //   DISubprogram *sub = F.getSubprogram();
    //   if (sub) {
    //     errs() << sub->getName() << "\n";
    //   }
    // }
    // CallGraph *cg = new CallGraph(M);
    // cg->dump();

    // collect all classes

    // Function *foobar = M.getFunction("_ZL6foobarv");
    // if (foobar) {
    //   errs() << *foobar << "\n";
    //   for (auto it=foobar->user_begin(), end=foobar->user_end();it!=end;++it) {
    //     User *user = *it;
    //     errs() << "===\n";
    //     errs() << *it << "\n";
    //     errs() << *user << "\n";
    //   }
    // }
    // return false;

    basic_call_graph(M);
    return false;



    /*******************************
     ** Following are backed up
     *******************************/
    

    // first one, find the main function
    Function *main_func = M.getFunction("main");
    if (main_func) {
      // RA
      for (Function::iterator it=main_func->begin(), end=main_func->end();it!=end;++it) {
        for (BasicBlock::iterator jt=it->begin(), jend=it->end();jt!=jend;++jt) {
          Instruction *inst = &*jt;
          if (CallInst *call_inst = dyn_cast<CallInst>(inst)) {
            errs() << "Call Instruction: ";
            errs() << *inst << "\n";
            Function *callee = call_inst->getCalledFunction();
            if (callee) {
              // std::cout <<"=== has callee"  << "\n";
              errs() << "=== callee: " << callee->getName() << "\n";
              DISubprogram *disubprogram = callee->getSubprogram();
              if (disubprogram) {
                errs() << "=== has DI Subprogram" << "\n";
                errs() << disubprogram->getName() << "\n";
              }
            } else {
              continue;
              unsigned num = call_inst->getNumArgOperands();
              if (num >0) {
              }
              Value *v = call_inst->getCalledOperand();
              if (v) {
                errs() << "=== value: " << "\n";
                errs() << *v << "\n";
                errs() << v->getType() << "\n";
                if (Instruction *ins = dyn_cast<Instruction>(v)) {
                  errs() << ins->getOpcodeName() << "\n";
                  if (LoadInst *load = dyn_cast<LoadInst>(ins)) {
                    // get type, which is the object called on
                    Value *operand = load->getPointerOperand();
                    errs() << "=== operand: " << *operand << "\n";
                    if (Instruction *ins = dyn_cast<Instruction>(operand)) {
                      errs() << ins->getOpcodeName() << "\n";
                      if (GetElementPtrInst *ptr = dyn_cast<GetElementPtrInst>(ins)) {
                        Type *src = ptr->getSourceElementType();
                        Type *res = ptr->getResultElementType();
                        Value *v = ptr->getPointerOperand();
                        Type *t = ptr->getPointerOperandType();
                        errs() << "--- src: " << *src << "\n";
                        errs() << "--- res: " << *res << "\n";
                        errs() << "--- v: " << *v << "\n";
                        errs() << "--- t: " << *t << "\n";
                      }
                    }
                  }
                }
              }

            }
          }
        }
      }
    }

    
    return false;
  }
};

char HebiCallGraphPass::ID = 0;


static RegisterPass<HebiCallGraphPass> X("hebicg", "Hebi Call Graph Pass", false, false);

#if 0
static RegisterStandardPasses Y(
    PassManagerBuilder::EP_EarlyAsPossible,
    [](const PassManagerBuilder &Builder,
       legacy::PassManagerBase &PM) { PM.add(new HebiCallGraphPass()); });
#endif
