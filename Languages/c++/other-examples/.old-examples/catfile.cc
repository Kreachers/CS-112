// $Id: catfile.cc,v 330.1 2003-01-22 11:07:51-08 - - $
//
// NAME
//    catfile - concatenate and display
//
// SYNOPSIS
//    catfile [-hns] [filename...]
//
// DESCRIPTION
//    Each of the files mentioned on the command line are displayed
//    to the standard output.  If no filenames are given, the
//    standard input is displayed.  A file name of ``-'' refers
//    to the standard input.
//
// OPTIONS
//    -h  Print filename headers before each file is printed.
//    -n  Print line numbers in front of each line of output.
//    -s  Suppress multiple blank lines.
//

#include <cassert>
#include <cerrno>
#include <cstdlib>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

/////////////////////////////////////////////////////////////////
//
// class options.
//
/////////////////////////////////////////////////////////////////

class Options{
   public:
      Options( int argc, char **argv );
      void error( string object, string problem = "" );
   public:
      bool opt_headers;
      bool opt_numbers;
      bool opt_squeeze;
      string prog_name;
      int exit_code;
      vector<string> filenames;
};

Options::Options( int argc, char **argv ):
   opt_headers( false ),
   opt_numbers( false ),
   opt_squeeze( false ),
   prog_name( argv[0] ),
   exit_code( EXIT_SUCCESS )
{
   int dir_pos = prog_name.find_last_of( '/' );
   if( dir_pos != prog_name.npos ) prog_name.erase( 0, dir_pos );
   extern char *optarg;
   extern int optind, opterr, optopt;
   opterr = false;
   for(;;){
      int option = getopt( argc, argv, "hns" );
      if( option == EOF ) break;
      switch( option ){
         case 'h': opt_headers = true; break;
         case 'n': opt_numbers = true; break;
         case 's': opt_squeeze = true; break;
         default : error( string("-") + static_cast<char>( optopt ),
                          "Invalid option" );
      };
   };
   for( int index = optind; index < argc; index++ ){
      filenames.push_back( argv[index] );
   };
};

void Options::error( string object, string problem ){
   cout.flush();
   cerr << prog_name << ": " << object;
   if( problem != "" ) cerr << ": " << problem;
   cerr << endl;
   cerr.flush();
   exit_code = EXIT_FAILURE;
};   

/////////////////////////////////////////////////////////////////
//
// main program
//
/////////////////////////////////////////////////////////////////

void catfile( istream &file, string filename, Options options ){
   static const string separator =
   "================================================================";
   bool emptyline = false;
   if( options.opt_headers ){
      cout << endl << separator << endl;
      cout << separator.substr( 0, 8 ) << " " << filename << endl;
      cout << separator << endl << endl;
   };
   for( int linecount = 1; ; linecount++ ){
      string line;
      getline( file, line );
      if( file.eof() ) break;
      if( ! file.good() ){
         if( line.size() == 0 ) file.clear();
         assert( file.good() );
      };
      if( emptyline && line.length() == 0 ) continue;
      if( options.opt_squeeze ) emptyline = line.length() == 0;
      if( options.opt_numbers ) cout << setw(6) << linecount << "  ";
      cout << line << endl;
   };
};

int main( int argc, char **argv ){
   Options options( argc, argv );
   const string cin_name( "-" );
   if( options.filenames.size() == 0 ){
      catfile( cin, cin_name, options );
   }else{
      typedef vector<string>::iterator Itor;
      Itor itor_end = options.filenames.end();
      Itor file_itor = options.filenames.begin();
      for( ; file_itor != itor_end; ++file_itor ){
         if( *file_itor == cin_name ){
            catfile( cin, cin_name, options );
         }else{
            ifstream file( file_itor->c_str() );
            if( file ){
               catfile( file, *file_itor, options );
               file.close();
            }else{
               options.error( *file_itor, strerror( errno ));
            };
         };
      };
   };
   return options.exit_code;
};
