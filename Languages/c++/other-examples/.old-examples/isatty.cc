// $Id: isatty.cc,v 320.8 2002-01-11 17:54:35-08 - - $
//
// NAME
//    isatty - check to see if cin, cout, and cerr are ttys
//
// SYNOPSIS
//    isatty
//
// DESCRIPTION
//    Examines the file descriptors associated with cin, cout,
//    and cerr and says whether or not they are ttys.  Redirection
//    to/from a pipe or file will make them not.
//

#include <iostream>
#include <cstdlib>
#include <unistd.h>

using namespace std;

string bool_string( bool value ){
   return value ? "true" : "false";
};

int main(){
   bool cin_isatty  = isatty( STDIN_FILENO  );
   bool cout_isatty = isatty( STDOUT_FILENO );
   bool cerr_isatty = isatty( STDERR_FILENO );
   cerr << "cin_isatty    = " << bool_string( cin_isatty  ) << endl;
   cerr << "cout_isatty   = " << bool_string( cout_isatty ) << endl;
   cerr << "cerr_isatty   = " << bool_string( cerr_isatty ) << endl;
};

//
// The following is from the C++ standard.
//
// There is no other documented way of extracting the fileno from cin,
// cout, and cerr, but the specifications below show that we can get
// that information from cstdio.
//    
//   27.3.1  Narrow stream objects     [lib.narrow.stream.objects]
//     
//   istream cin;
//     
// 1 The object cin controls input from a stream buffer associated
//   with the object stdin, declared in <cstdio>.
// 
// 2 After the object cin is initialized, cin.tie() returns &cout.
// 
//   ostream cout;
// 
// 3 The object cout controls output to a stream buffer associated
//   with the object stdout, declared in <cstdio> (_lib.c.files_).
// 
//   ostream cerr;
// 
// 4 The object cerr controls output to a stream buffer associated
//   with the object stderr, declared in <cstdio> (_lib.c.files_).
// 
// 5 After  the  object  cerr  is  initialized,  cerr.flags()  &
//   unitbuf is nonzero.
// 

