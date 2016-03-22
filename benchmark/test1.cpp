#include <iostream>
class A;
class B;
class C;
class D;
class E;


class A {
public:
  A() {}
  virtual void foo() {
  }
  void bar() {}
};

class B : public A {
  virtual void foo() {}
  void bar() {}
};

class C {
public:
  virtual void foo2() {}
  void bar2();
};

class D : public C {
  virtual void foo2() {}
  void bar2();
};

class E : public D {
  virtual void foo2() {
    A *a = new B();
    a->foo();
  }
  void bar2();
};

static void foobar() {
}


int main(int argc, char* argv[]) {
  foobar();
  A *a = new A();
  a->foo();
  (*a).foo();
  C *e = new E();
  e->foo2();
  e->bar2();
}
