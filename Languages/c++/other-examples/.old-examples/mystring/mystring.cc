// $Id: mystring.cc,v 330.5 2003-01-23 20:53:40-08 - - $

//
// implementation of class mystring
//

#include <cstring>
#include <typeinfo>

using namespace std;

#include "mystring.h"

char* strdup( char* that ){
   char* result = new char[ strlen(that) + 1 ];
   strcpy( result, that );
   return result;
};

mystring::mystring(): dim(default_dim), len(0){
   buf = new char[dim];
   buf[0] = '\0';
   dump( "mystring::mystring()" );
};

mystring::mystring( const mystring& that ): dim(that.dim),
                                            len(that.len){
   buf = new char[dim];
   strcpy( buf, that.buf );
   dump( "mystring::mystring(const mystring&)" );
};

mystring::~mystring(){
   dump( "mystring::~mystring()" );
   delete buf;  // get rid of what is pointed at
};

mystring& mystring::operator=( const mystring& that ){
   if( this != &that ){
      // DANGER if the copy from and copy to are the same thing.
      if( dim < that.dim ){
         delete buf;
         dim = that.dim;
         buf = new char[dim];
      };
      len = that.len;
      strcpy( buf, that.buf );
   };
   dump( "mystring& mystring::operator=(const mystring&)" );
   return *this;
};

mystring& mystring::operator+=( const mystring& that ){
   char* thatbuf = that.buf;
   if( this == &that ){
      // make a temporary copy to avoid strcat'ting to itself.
      thatbuf = strdup( that.buf );
   };
   if( dim < len + that.len + 1 ){
      // Buffer too short so make it longer.
      dim = len + that.len + 1;
      char* oldbuf = buf;
      buf = new char[dim];
      strcpy( buf, oldbuf );
      delete oldbuf;
   };
   strcat( buf, thatbuf );
   len = strlen( buf );
   if( this == &that ){
      // delete the temporary we made above
      delete thatbuf;
   };
   dump( "mystring& mystring::operator+=(const mystring&)" );
   return *this;
};

mystring::mystring( const char *cstring ){
   len = strlen( cstring );
   dim = len + 1;
   buf = new char[dim];
   strcpy( buf, cstring );
   dump( "mystring::mystring(const char*)" );
};

mystring::mystring( int initlen ): len(initlen){
   dim = len + 1;
   buf = new char[dim];
   buf[0] = '\0';
   dump( "mystring::mystring(int)" );
};

int mystring::size(){
   return len;
};

void mystring::dump( const char* message ){
   cout << message << ":" << endl
        << "(" << typeid(this).name() << ")@"
        << static_cast<void*>(this) << " -> " << endl
        << "        dim=" << dim << endl
        << "        len=" << len << endl
        << "        buf@" << static_cast<void*>(buf)
                    << " -> [" << buf << "]" << endl;
};

ostream& operator<<( ostream& out, mystring str ){
   return out << str.buf;
};
