// $Id: stl-vector.cc,v 1.2 2008-01-29 15:03:12-08 - - $

/*
* example of vector and vector::iterator.
*
* read in numbers and print them out.
* -r option: in reversed order.
* otherwise: in normal order.
*/

#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main (int argc, char *argv[]) {
   string argv0 = argv[0];
   string argv1 = argc > 1 ? argv[1] : "";
   vector<double> numbers;
   double number;
   while (cin >> number) {
      numbers.push_back (number);
      cout << "input = " << number << endl;
   };
   cout << endl;

   if (argc > 1 && argv1 == "-r") {

      // Dump out in reverse order.

      while (numbers.size() > 0) {
         cout << "output -R = " << numbers[ numbers.size() - 1 ]
              << endl;
         numbers.pop_back();
      };

   }else{

      // Dump out in default order.

      for (vector<double>::iterator itor = numbers.begin();
           itor != numbers.end();
           itor += 1
      ){
         cout << "output = " << *itor << endl;
      };

   };
   return 0;
};
