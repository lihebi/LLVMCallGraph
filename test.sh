#!/bin/bash
opt -load ./hebicg/libHebiCallGraphPass.so -hebicg benchmark/test1.bc
opt -load ./hebicg/libHebiCallGraphPass.so -hebicg benchmark/simple-c-func.bc
