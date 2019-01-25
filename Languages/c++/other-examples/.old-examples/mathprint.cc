// $Id: mathprint.cc,v 352.19 2005-04-12 11:38:27-07 - - $
//
// NAME
//    mathprint - print out some math costants using width 15
//
// DESCRIPTION
//    Also show how bug in printing Infinity.
//

#include <iomanip>
#include <iostream>

using namespace std;

static const double POS_INFINITY =  1.0 / 0.0;
static const double NEG_INFINITY = -1.0 / 0.0;
static const double NAN          =  0.0 / 0.0;

#define PAIR(X) { #X, X }

struct mpair{
   string name;
   double value;
} numbers[] = {
   PAIR(M_E),
   PAIR(M_LOG2E),
   PAIR(M_LOG10E),
   PAIR(M_LN2),
   PAIR(M_LN10),
   PAIR(M_PI),
   PAIR(M_PI_2),
   PAIR(M_PI_4),
   PAIR(M_1_PI),
   PAIR(M_2_PI),
   PAIR(M_2_SQRTPI),
   PAIR(M_SQRT2),
   PAIR(M_SQRT1_2),
   PAIR(POS_INFINITY),
   PAIR(NEG_INFINITY),
   PAIR(NAN),
};

int main( int argc, char **argv ){
   int dim = sizeof numbers / sizeof numbers[0];
   for( struct mpair *itor = numbers; itor < numbers + dim; ++itor ){
      cout << left << setw(12) << itor->name << " = "
           << setprecision(15) << itor->value;
      if( itor->value == POS_INFINITY ) cout << " == +Infinity";
      if( itor->value == NEG_INFINITY ) cout << " == -Infinity";
      cout << endl;
   };
}
