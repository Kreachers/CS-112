// $Id: statsize.cc,v 330.1 2003-01-22 11:07:12-08 - - $
//
// NAME
//    statsize - stat the sizes of files
//
// DESCRIPTION
//    The sizes of the files mentioned in argv are printed.
//
// OPTIONS
//    -v  Verbose mode.  All stat fields are printed for each file.
//
// DISCUSSION
//    The simple version of the program just does something like:
//
//       status = stat( argv[argi], &statbuf );
//       if( status != 0 ) bufsize = whatever the default is;
//                    else bufsize = statbuf.st_size;
//

#include <cerrno>
#include <cstdlib>
#include <iomanip>
#include <iostream>
#include <string>
#include <sys/stat.h>

using namespace std;

void printint( string label, long value ){
   cout << setw(12) << value << " = " << label << endl;
};

int main( int argc, char **argv ){
   struct stat statbuf;
   bool verbose = false;
   int argi = 1;
   if( argv[1] && strcmp( argv[1], "-v" ) == 0 ){
      verbose = true;
      argi++;
   };
   for(; argi < argc; argi++ ){
      int status = stat( argv[argi], &statbuf );
      if( status != 0 ){
         cerr << argv[0] << ": " << argv[argi] << ": "
              << strerror( errno ) << endl;
      }else{
         if( verbose ){
            cout << "Filename: " << argv[argi] << endl;
            printint( "size",    statbuf.st_size );
            cout << "     0"
                 << setbase( 8 ) << setfill( '0' ) << setw( 6 )
                 << statbuf.st_mode
                 << setbase( 10 ) << setfill( ' ' )
                 << " = mode" << endl;
            printint( "device",  statbuf.st_dev );
            printint( "inode",   statbuf.st_ino );
            printint( "nlinks",  statbuf.st_nlink );
            printint( "uid",     statbuf.st_uid );
            printint( "gid",     statbuf.st_gid );
            printint( "atime",   statbuf.st_atime );
            printint( "mtime",   statbuf.st_mtime );
            printint( "ctime",   statbuf.st_ctime );
            printint( "blksize", statbuf.st_blksize );
            printint( "nblocks", statbuf.st_blocks );
            cout << endl;
         }else{
            cout << setw(10) << statbuf.st_size << "  " << argv[argi]
                 << endl;
         };
      };
   };
   return EXIT_SUCCESS;
};
