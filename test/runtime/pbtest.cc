
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/Module.h>
#include <iostream>

#include "tb.h"

void get_random_key(char *s, int l) {
  for (int c; c = rand() % 62, *s++ = (c + "07="[(c + 16) / 26]) * (l-- > 0);)
    ;
}

int main(int argc, char **argv) {
  int n_records, i;
  char key[10];
  static llvm::LLVMContext ctx;
  pb::Table *tb;

  tb = care_tb_create();

  std::vector<llvm::Type *> paramTy(5);
  std::vector<std::string> params(5);

  paramTy[0] = llvm::Type::getInt16Ty(ctx);
  paramTy[1] = llvm::Type::getInt32Ty(ctx);
  paramTy[2] = llvm::Type::getInt32Ty(ctx);
  paramTy[3] = llvm::Type::getInt32Ty(ctx);
  paramTy[4] = llvm::Type::getInt32Ty(ctx);

  params[0] = "abc";
  params[1] = "bcd";
  params[2] = "cde";
  params[3] = "def";
  params[4] = "efg";

  n_records = 10;
  if (argc == 2) n_records = atoi(argv[1]);
  for (i = 0; i < n_records; i++) {
    get_random_key(key, 9);
    llvm::FunctionType *FuncTy =
        llvm::FunctionType::get(llvm::Type::getInt32Ty(ctx),
                                llvm::ArrayRef<llvm::Type *>(paramTy), false);
    llvm::Function *Function =
        llvm::Function::Create(FuncTy, llvm::GlobalVariable::ExternalLinkage,
                               llvm::StringRef("funcname"));

    care_tb_add_record(tb, key, Function, params);
  }

  std::cout << "writer: ";
  care_tb_print(tb);
  care_tb_save("./test.tb", tb);

  std::cout << "reader: ";
  pb::Table *ntb = care_tb_load("./test.tb");
  care_tb_print(ntb);

  care_tb_release(tb);
  care_tb_release(ntb);

  return 0;
}
