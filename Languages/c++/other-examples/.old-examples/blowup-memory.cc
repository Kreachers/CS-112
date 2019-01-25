// $Id: blowup-memory.cc,v 340.2 2004-01-22 12:18:46-08 - - $
//
// Blow up memory - keep allocating lots of things until we crash
// on memory exceeded.
//

#include <iomanip>
#include <iostream>
#include <new>

using namespace std;

int main( int argc, char **argv ){
   try{
      for( int count = 1; true; count <<= 1 ){
         char *buffer = new char[count];
         cout << argv[0] << ": allocated "
              << setw(11) << setfill(' ') << count << " bytes at "
              << "0x" << setw(8) << setfill('0') << (void*) buffer
              << endl;
      };
   }catch( bad_alloc exn ){
      cerr << argv[0] << ": bad_alloc exn: " << exn.what() << endl;
   };
};

