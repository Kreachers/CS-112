// $Id: default-members.cc,v 1.2 2008-01-29 15:07:01-08 - - $

//
// This example illustrates the default ctor, copy ctor, dtor,
// and operator= explicitly defined for class foo and implicitly
// defined for class bar.  Note that bar operations cause foo
// operations to occur.
//

#include <cstdlib>
#include <iostream>
#include <string>

using namespace std;

class foo{
   public:
      foo();
      foo (const foo&);
      foo (int);
      virtual ~foo();
      foo& operator= (const foo&);
   private:
      void dump (string);
      int value;
};

void foo::dump (string label) {
   cout << "foo::dump(" << static_cast<void*> (this) << "): "
        << label << ": value=" << value << endl;
};

foo::foo(): value(0) {
   dump ("foo()");
};

foo::foo (const foo& that): value(that.value) {
   dump ("foo(const foo&)");
};

foo::foo (int init): value(init) {
   dump ("foo(int)");
};

foo::~foo() {
   dump ("~foo()");
};

foo& foo::operator= (const foo& that) {
   this->value = that.value;
   dump ("foo& operator=(const foo&)");
   return *this;
};

struct bar{
   public:
      foo foobar;
};

#define MAINDEBUG(X) cout << "MAINDEBUG: " ## #X << endl; X
int main (int argc, char **argv) {
   MAINDEBUG (bar one;)
   MAINDEBUG (one.foobar = 4;)
   MAINDEBUG (bar two (one);)
   MAINDEBUG (bar three;)
   MAINDEBUG (three = one;)
   MAINDEBUG (return EXIT_SUCCESS;)
};

