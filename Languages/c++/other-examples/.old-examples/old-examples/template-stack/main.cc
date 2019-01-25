// $Id: main.cc,v 360.1 2006-02-02 14:34:41-08 - - $

#include <cstdlib>
#include <iostream>
#include <string>

using namespace std;

#include "stack.h"

int main (int argc, char **argv) {
   stack<string> stk;
   for (int it = 0; it < argc; ++it){
      cout << "push: " << argv[it] << endl;
      stk.push (argv[it]);
   };
   try {
      for(;;){
         cout << "pop: " << stk.pop() << endl;
      };
   }catch (stack<string>::emptyexn _) {
      cout << "caught emptyexn" << endl;
   };
   return EXIT_SUCCESS;
}
