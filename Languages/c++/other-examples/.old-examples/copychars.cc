// $Id: copychars.cc,v 320.12 2002-01-15 15:56:53-08 - - $

//
// NAME
//    copychars - copy from cin to cout
//
// SYNOPSIS
//    copychars -c|-g|-s
//
// DESCRIPTION
//    Copies the stream cin to the stream cout in several ways,
//    depending on the option given.
//
// OPTIONS
//
//    -c Reads input using cin >> input, illustrating how white
//       space on input is skipped over and ignored, making this
//       option different from cat.
//
//    -g Reads input using cin.get(), faithfully echoing all input
//       to output, just like cat.
//
//    -s Uses the STL string class to copy input to output.
//

#include <cassert>
#include <cstdlib>
#include <iostream>
#include <string>

using namespace std;

// Option -c version.

void version_c(){
   char input;
   while( cin >> input ){
      cout << input;
      if( cin.eof() ) break;
   };
   cout << endl;
}

// Option -g version.

void version_g(){
   char input;
   while( cin.good() && cin.get( input )){
      cout << input;
   };
}

// Option -s version.

void version_s(){
   string one_line;
   for(;;){
      getline( cin, one_line );
      if( cin.eof() ) break;
      if( ! cin.good() ){
         cout << "! cin.good()" << endl;
         if( one_line.length() == 0 ) cin.clear();
         assert( cin.good() );
      };
      cout << one_line << endl;
   };
};

// Option -a version, same as -s, except char[] instead of string

void version_a(){
   const int LINESIZE = 1024;
   char one_line[LINESIZE];
   for(;;){
      cin.getline( one_line, LINESIZE );
      if( cin.eof() ) break;
      if( ! cin.good() ){
         cout << "! cin.good()" << endl;
         if( one_line[0] == 0 ) cin.clear();
         assert( cin.good() );
      };
      cout << one_line << endl;
   };
};

// Option -x version, same as -s, except use own getline

void readline( istream &cin, string &one_line ){
   one_line.erase();
   for(;;){
      if( cin.eof() ) return;
      char next = cin.get();
      if( ! cin.good() ) return;
      if( next == '\n' ) return;
      one_line += next;
   };
};

void version_x(){
   string one_line;
   for(;;){
      readline( cin, one_line );
      if( cin.eof() ) break;
      if( ! cin.good() ){
         cout << "WARNING:  ! cin.good()" << endl;
         if( one_line.length() == 0 ) cin.clear();
         assert( cin.good() );
      };
      cout << one_line << endl;
   };
};

//
// Main function.
// Check argv for option and delegate to specific function.
//

int main( int argc, char *argv[] ){
   if( argc == 2 && strlen( argv[1] ) == 2 && argv[1][0] == '-' ){
      switch( argv[1][1] ){
         case 'a': version_a(); return EXIT_SUCCESS;
         case 'c': version_c(); return EXIT_SUCCESS;
         case 'g': version_g(); return EXIT_SUCCESS;
         case 's': version_s(); return EXIT_SUCCESS;
         case 'x': version_x(); return EXIT_SUCCESS;
      };
   };
   cerr << "Usage: " << argv[0] << " -acgsx" << endl;
   return EXIT_FAILURE;
}
