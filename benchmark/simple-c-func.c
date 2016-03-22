#include <stdio.h>

void foo();
void bar();
void foo2();
void bar2();

void foo() {
  bar();
}

void bar() {
  bar2();
  foo2();
}

void bar2() {
  foo2();
}

void foo2() {}

int main() {
  foo();
  bar();
  return 0;
}
