// $Id: sqrt.cc,v 330.4 2003-01-23 15:58:37-08 - - $
//
// NAME
//    sqrt - compute the square root of some numbers
//
// SYNOPSIS
//    sqrt [numbers]...
//
// DESCRIPTION
//    computes the square root of numbers given in argv
//

#include <cmath>
#include <cstdlib>
#include <ieeefp.h>
#include <iomanip>
#include <iostream>

using namespace std;

double sqrt( double num, bool debug ){
   if( num < 0.0 ) return 0.0 / 0.0;
   int exp;
   double fraction = frexp( num, &exp );
   if( fraction == 0.0 || ! finite( fraction )) return fraction;
   double root = ldexp( fraction * 2, (exp - 1) / 2 );
   int precision = 15;
   double epsilon = pow( 10.0, - precision );
   for( int count = 0; ; count++ ){
      double error = fabs( (root * root - num) / num );
      if( debug ){
         cout << setprecision(15) << "sqrt(" << num << ") = " << root
              << ", error = " << error << " (" << count << ")" << endl;
      };
      if( error < epsilon || count > precision ) break;
      root = (root * root + num) / (2.0 * root);
   };
   return root;
}

int main( int argc, char **argv ){
   for( int argi = 1; argi < argc; argi++ ){
      double num = atof( argv[argi] );
      double sqrtnum = sqrt( num, true );
      cout << argv[0] << ": "
           << "sqrt(" << num << ") = " << sqrtnum << endl << endl;
   };
}

