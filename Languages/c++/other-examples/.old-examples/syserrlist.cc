// $Id: syserrlist.cc,v 320.1 2002-01-09 16:52:31-08 - - $
//
// NAME
//    sys-errmsgs - print out system error messages.
//
// SYNOPSIS
//    sys-errmsgs [errno]
//
// DESCRIPTION
//    Prints out a system error message, given an error code that
//    might be assigned to <cerrno>errno.  If no argument is given,
//    print out all of the errors.
//

#include <cstdlib>
#include <iomanip>
#include <iostream>
#include <string>

using namespace std;

// enum { EXIT_SUCCESS = 0, EXIT_FAILURE = 1 };

extern int sys_nerr;
extern char *sys_errlist[];

void usage_exit( const string &program_name ){
   cerr << "Usage: " << program_name << " [errno]" << endl
        << "       where errno is in range 0 to "
        << sys_nerr - 1 << endl;
   exit( EXIT_FAILURE );
};

void print_error( string label, int errno ){
   cout << label << ": " << setw(3) << errno << ": "
        << sys_errlist[ errno ] << endl;
};

int main( int argc, char *argv[] ){
   if( argc > 2 ) usage_exit( argv[0] );
   if( argc < 2 ){
      for( int errno = 0; errno < sys_nerr; errno += 1 ){
         print_error( argv[0], errno );
      };
   }else{
      int errno = atoi( argv[1] );
      if( errno < 0 || errno >= sys_nerr ){
         usage_exit( argv[0] );
      }else{
         print_error( argv[0], errno );
      };
   };
   return EXIT_SUCCESS;
};
