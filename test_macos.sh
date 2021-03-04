#!/bin/sh
set -x
make -C ./benchmark/
opt -load ./build/hebicg/HebiCallGraphPass.dylib -hebicg benchmark/test1.bc
opt -load ./build/hebicg/HebiCallGraphPass.dylib -hebicg benchmark/simple-c-func.bc
