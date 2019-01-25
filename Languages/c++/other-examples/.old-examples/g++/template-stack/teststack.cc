// $Id: teststack.cc,v 320.1 2002-01-15 17:35:05-08 - - $

#include <iostream>
#include "stack.h"

using namespace std;

//
// main test harness
//

int main( void ){
   double d;
   Stack<double> stack;
   while( cin >> d ){
      stack.push( d );
      cout << "Pushed: " << d << endl;
   };
   while( ! stack.empty() ){
      cout << "Popped: " << stack.pop() << endl;
   };
   try{
      static_cast<void>( stack.pop() );
   }catch( Stack<double>::Exception empty ){
      cout << "Stack::Exception " << empty << endl;
   };
   return 0;
};

