// $Id: stl-stack.cc,v 1.3 2008-01-29 15:10:45-08 - - $

#include <iostream>
#include <stack>
#include <string>
#include <vector>

using namespace std;

template <class type>
struct test_stack{
   //
   // Assumes that cin>> and cout<< are defined for type.
   //
   static void run_test (string label) {
      stack <type, vector <type> > the_stack;
      type value;

      //
      // Read in objects of type until end of file or failure
      //
      cout << label << "----------------" << endl;
      while (cin >> value) {
         the_stack.push (value);
         cout << "input = " << value << endl;
      };

      //
      // Dump out the stack and empty it.
      //
      cout << label << "----------------" << endl;
      while (! the_stack.empty()) {
         cout << "output = " << the_stack.top() << endl;
         the_stack.pop();
      };
   };
};

int main (int argc, char **argv) {
   //
   // QND option handler.  -s means strings, else doubles.
   //
   string options = argc > 1 ? argv[1] : "";
   if (options == "-s") test_stack<string>::run_test ("string");
                   else test_stack<double>::run_test ("double");
   return 0;
};
