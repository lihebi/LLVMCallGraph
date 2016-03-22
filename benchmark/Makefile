all : test1.bc simple-c-func.bc

test1.bc : test1.cpp
	clang -g -O0 -emit-llvm $< -c -o $@
	llvm-dis $@

simple-c-func.bc : simple-c-func.c
	clang -g -O0 -emit-llvm $< -c -o $@
	llvm-dis $@

test:
	opt -load ../hebicg/libHebiCallGraphPass.so -hebicg test1.bc
	opt -load ../hebicg/libHebiCallGraphPass.so -hebicg simple-c-func.bc

png:
	dot -Tpng out.dot -o out.png

clean:
	rm -f *.bc
	rm -f *.ll
	rm -f *.png
	rm -f *.dot
