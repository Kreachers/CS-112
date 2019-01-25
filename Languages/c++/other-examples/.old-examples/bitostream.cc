// $Id: bitostream.cc,v 340.9 2004-01-23 11:53:28-08 - - $

/////////////////////////////////////////////////////////////////
//
// bitostream.h
//
/////////////////////////////////////////////////////////////////

#ifndef __BITOSTREAM_H__
#define __BITOSTREAM_H__

#include <iostream>

using namespace std;

class bitostream{
   private:
      bitostream(); // disable default ctor.
      bitostream( bitostream & ); // disable copy ctor.
      bitostream &operator=( bitostream & ); // disable operator =.
   private:
      enum { LEFTMOST = 1 << ( CHAR_BIT - 1 ) };
      ostream &out;
      unsigned char byte;
      unsigned char mask;
      void init(){ byte = 0; mask = LEFTMOST; };
   public:
      bitostream( ostream &out ): out( out ){ init(); };
      bitostream &put( unsigned long bits, unsigned count = 1 );
      void flush();
      ~bitostream(){ flush(); };
};

#endif

/////////////////////////////////////////////////////////////////
//
// bitostream.cc
//
/////////////////////////////////////////////////////////////////

//#include "bitostream.h"
#include <cassert>

bitostream &bitostream::put( unsigned long bits, unsigned count ){
   // Bits are numbered from sizeof(bits)*CHAR_BIT-1 as the MSB
   // downto 0 as the LSB.  Bits output are count-1 downto 0.
   assert( count < CHAR_BIT * sizeof bits );
   for( unsigned long bmask = 1 << ( count - 1 ); bmask; bmask >>= 1 ){
      if( bits & bmask ) byte |= mask;
      if(( mask >>= 1 ) == 0 ){ out.put( byte ); init(); };
   };
   return *this;
};

void bitostream::flush(){
   if( mask != LEFTMOST ) out.put( byte );
   out.flush();
};

/////////////////////////////////////////////////////////////////
//
// main.cc
//
/////////////////////////////////////////////////////////////////

#include <cassert>
#include <cerrno>
#include <climits>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <string>

using namespace std;

//#include "bitostream.h"

int main( int argc, char *argv[] ){

   //
   // If argv[1] does not exist, point bout at cout.
   // Otherwise open argv[1] as the output file and exit in a
   // snit if that can't be done.
   //
   bitostream *bout;
   ofstream *out = NULL;
   if( argc == 1 ){
      bout = new bitostream( cout );
   }else{
      out = new ofstream( argv[1] );
      if( out ){
         bout = new bitostream( *out );
      }else{
         cerr << argv[0] << ": " << argv[1] << ": "
              << strerror( errno ) << endl;
         exit( EXIT_FAILURE );
      };
   };

   //
   // Write out the hello message twice, once by char and once by bit.
   //
   string hello = "Hello, World!\n";

   // First, 8 bits at a time...
   for( string::iterator hello_itor = hello.begin();
        hello_itor != hello.end();
        hello_itor += 1
   ){
      bout->put( *hello_itor, CHAR_BIT );
   };

   // News, put it one bit at a time...
   for( string::iterator hello_itor = hello.begin();
        hello_itor != hello.end();
        hello_itor += 1
   ){
      for( unsigned mask = 1 << ( CHAR_BIT - 1 ); mask; mask >>= 1 ){
         bout->put( *hello_itor & mask ? 1 : 0 );
      };
   };

   if( out ) out->close();
   return EXIT_SUCCESS;
};
