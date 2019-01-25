// $Id: default-members.cc,v 330.2 2003-01-28 10:54:23-08 - - $

//
// This example illustrates the default ctor, copy ctor, dtor,
// and operator= explicitly defined for class Foo and implicitly
// defined for class Bar.  Note that Bar operations cause Foo
// operations to occur.
//

#include <cstdlib>
#include <iostream>
#include <string>

using namespace std;

class Foo{
   public:
      Foo();
      Foo( const Foo& );
      Foo( int );
      virtual ~Foo();
      Foo& operator=( const Foo& );
   private:
      void dump( string );
      int value;
};

void Foo::dump( string label ){
   cout << "Foo::dump(" << static_cast<void*>( this ) << "): "
        << label << ": value=" << value << endl;
};

Foo::Foo(): value(0){
   dump( "Foo()" );
};

Foo::Foo( const Foo& that ): value(that.value){
   dump( "Foo(const Foo&)" );
};

Foo::Foo( int init ): value(init){
   dump( "Foo(int)" );
};

Foo::~Foo(){
   dump( "~Foo()" );
};

Foo& Foo::operator=( const Foo& that ){
   this->value = that.value;
   dump( "Foo& operator=(const Foo&)" );
   return *this;
};

struct Bar{
   public:
      Foo foo;
};

#define MAINDEBUG(X) cout << "MAINDEBUG: " ## #X << endl; X
int main( int argc, char **argv ){
   MAINDEBUG( Bar one; )
   MAINDEBUG( one.foo = 4; )
   MAINDEBUG( Bar two( one ); )
   MAINDEBUG( Bar three; )
   MAINDEBUG( three = one; )
   MAINDEBUG( return EXIT_SUCCESS; )
};

