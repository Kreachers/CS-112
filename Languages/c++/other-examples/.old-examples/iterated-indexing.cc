// $Id: iterated-indexing.cc,v 320.2 2002-01-31 12:30:49-08 - - $
//
// Iterator examples.
//
// Iterate over a data structure using an iterator.
//
// Note that iterators in general work just like pointers, with
// a few exceptions when the iterators are not completely general.
// This means that ++ and -- can be used to increment/decrement
// them, * can dereference to the object, -> can be used to call
// a method or select a field from an itor, just like a pointer,
// and itor+-integer works like pointer +-integer.
//

#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main( int argc, char **argv ){
   vector<string> argvs;
   for( char **argi = argv; argi < argv + argc; ++argi ){
      cout << "pushing " << ( argi - argv ) << " - " << *argi << endl;
      argvs.push_back( string( *argi ));
   };

   typedef vector<string>::iterator vs_itor;
   typedef string::iterator s_itor;
   vs_itor vbbegin = argvs.begin();
   vs_itor vbend = argvs.end();
   for( vs_itor vitor = vbbegin; vitor != vbend; ++vitor ){
      cout << vitor - vbbegin << ": " << *vitor << endl;
      s_itor sbegin = vitor->begin();
      s_itor send = vitor->end();
      for( s_itor sitor = sbegin; sitor != send; ++sitor ){
         cout << "----[" << sitor - sbegin << "]: " << *sitor << endl;
      };
   };
};
