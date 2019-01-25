// $Id: ccgetopt.cc,v 320.1 2002-01-10 16:19:48-08 - - $
//
// NAME
//    ccgetopt - illustrate use of getopt
//
// DESCRIPTION
//    Some options are passed in, and the use of getopt is
//    illustrated.  Arguments that are not options are printed
//    after that.
//
// OPTIONS
//    -a, -b - standalone options
//    -x, -y - options requiring an argument string
//

#include <cstdlib>
#include <iostream>
#include <vector>

using namespace std;

string boolstr( bool value ){
   return value ? "true" : "false";
};

class Options{
   public:
      Options( int argc, char **argv, bool debug= false );
      void set_exit_failure(){ exit_code = EXIT_FAILURE; };
      int get_exit_code(){ return exit_code; };
      void debug_print();
   private:
      string program_name;
      bool option_a;
      bool option_b;
      string option_x;
      string option_y;
      vector<string> filenames;
      int exit_code;
};

Options::Options( int argc, char **argv, bool debug ) :
      program_name( argv[0] ),
      option_a( false ),
      option_b( false ),
      option_x( "" ),
      option_y( "" ),
      exit_code( EXIT_SUCCESS )
{
   int slash_pos = program_name.find_last_of( '/' );
   if( slash_pos != program_name.npos ){
      program_name.erase( 0, slash_pos );
   };
   extern char *optarg;
   extern int optind, opterr, optopt;
   opterr = false;
   for(;;){
      int flag = getopt( argc, argv, "abx:y:" );
      if( flag == EOF ) break;
      switch( flag ){
         case 'a': option_a = true;   break;
         case 'b': option_b = true;   break;
         case 'x': option_x = optarg; break;
         case 'y': option_y = optarg; break;
         default : cerr << program_name << ": Error: -" << (char)optopt
                        << ": invalid option" << endl;
                   set_exit_failure();
      };
   };
   for( int index = optind; index < argc; index++ ){
      filenames.push_back( argv[ index ]);
   };
};

void Options::debug_print(){
   cerr << program_name << ": option -a = "
        << boolstr( option_a ) << endl;
   cerr << program_name << ": option -b = "
        << boolstr( option_b ) << endl;
   cerr << program_name << ": option -x = \""
        << option_x << "\"" << endl;
   cerr << program_name << ": option -y = \""
        << option_y << "\"" << endl;
   typedef vector<string>::iterator Itor;
   Itor itor_start = filenames.begin();
   Itor itor_end = filenames.end();

   for(  Itor itor = itor_start; itor != itor_end; ++itor ){
      cerr << program_name << ": filename[" << itor - itor_start
           << "]=\"" << *itor << "\"" << endl;
   };
};

int main( int argc, char **argv ){
   Options *options = new Options( argc, argv, true );
   options->debug_print();
   return options->get_exit_code();
};
