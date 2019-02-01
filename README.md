# CARE

## Introduction

CARE is a Compiler-Assisted Recovery mechanism for soft failures, which
are caused by transient faults.

CARE is to recover applications from failures by recomputing the crahsed states through replaying related instructions.

## Dependent libraries

CARE is implemented based on several packages, including:

1. llvm-3.8.0 (should enable RTTI)

2. protobuf-cpp-3.6.0 (should match the version number)

3. capstone

4. udis86-1.7.2

5. libdwarf-20180809


