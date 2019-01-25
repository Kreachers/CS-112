// $Id: mystring.h,v 330.3 2003-01-23 20:38:16-08 - - $

//
// class mystring - duplicate some of the functions of string
//

#ifndef __MYSTRING_H__
#define __MYSTRING_H__

#include <iostream>

class mystring{
   public:
      // four members that are defaulted if not supplied
      mystring();                             // default ctor
      mystring( const mystring& );            // copy ctor
      virtual ~mystring();                    // dtor
      mystring& operator=( const mystring& ); // operator=

      // some other useful members.
      mystring( const char* );                // conversion ctor
      explicit mystring( int );               // length-specified ctor
      mystring& operator+=( const mystring& );
      int size();

      friend ostream& operator<<( ostream&, mystring );

   private:
      static const int default_dim = 128;
      char *buf;   // array of characters to represent string
      int dim;     // dimension of the array
      int len;     // current length of the string
      void dump( const char* label ); // debug dumper routine
};

#endif

