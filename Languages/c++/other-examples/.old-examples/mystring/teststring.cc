// $Id: teststring.cc,v 330.6 2003-01-23 20:56:51-08 - - $

//
// Tester for mystring
//

#include <cstdlib>
#include <iostream>

using namespace std;

#include "mystring.h"

#define LINE "------------------------------------"
#define DEBUG(STMT) cout << endl \
        << LINE << LINE << endl << "DEBUG: " \
        << __FILE__ << ":" << __LINE__ << ": " << #STMT << endl; \
        STMT \
        cout << LINE << LINE << endl;

static const char* rcsid =
       "$Id: teststring.cc,v 330.6 2003-01-23 20:56:51-08 - - $";
int main( int argc, char **argv ){
   cout << "Running " << argv[0] << endl;
   cout << rcsid << endl;
   DEBUG( mystring s1; )
   DEBUG( mystring s2 = "testing from char*"; )
   DEBUG( mystring s3 = s2; )
   DEBUG( s1 = s3; )
   DEBUG( s2 += s3; )
   DEBUG( s2 += s3; )
   DEBUG( cout << "s2.size = " << s2.size() << endl; )
   DEBUG( mystring s4(10); )
   DEBUG( s4 += "foo"; )
   DEBUG( s4 += "bar"; )
   DEBUG( s4 += "baz"; )
   DEBUG( mystring* ptr = new mystring( "new mystring" ); )
   DEBUG( delete ptr; ptr = 0; )
   DEBUG( mystring* leak1 = new mystring( rcsid ); )
   DEBUG( mystring* leak2 = new mystring( *leak1 ); )
   DEBUG( int* leak3 = new int[1024]; )
   DEBUG( int* leak4 = new int[1024]; )
   DEBUG( mystring* leak5 = new mystring(1<<16); )
   DEBUG( mystring* leak6 = new mystring(); )
   return EXIT_SUCCESS;
};
