#!/bin/bash
set -x
make -C ./benchmark/
opt -load ./build/hebicg/libHebiCallGraphPass.so -hebicg benchmark/test1.bc
opt -load ./build/hebicg/libHebiCallGraphPass.so -hebicg benchmark/simple-c-func.bc
