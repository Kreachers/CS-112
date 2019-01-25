// $Id: ccecho.cc,v 320.1 2002-01-10 16:19:48-08 - - $
//
// NAME
//    ccecho - echo arguments to the standard output
//
// SYNOPSIS
//    ccecho [ argument ... ]
//
// DESCRIPTION
//    ccecho writes its arguments to the standard output, each
//    separated from the next with a space and all terminated
//    with a NEWLINE.  It prints nothing if there are no
//    arguments.
//
// PERL
//    print "@ARGV\n"
// 

#include <cstdlib>
#include <iostream>

using namespace std;

int main( int argc, char *argv[] ){
   if( argc > 1 ){
      for( int argi = 1; argi < argc - 1; argi++ ){
         cout << argv[ argi ] << ' ';
      };
      cout << argv[ argc - 1 ] << endl;
   };
   return EXIT_SUCCESS;
};
