// $Id: stl-list.cc,v 1.2 2008-01-29 15:03:00-08 - - $
//
// Test STL list
//

#include <iostream>
#include <string>
#include <list>

using namespace std;

int main (int argc, char **argv) {
   string item;
   list<string> list;
   while (cin >> item) {
      cout << "Push: " << item << endl;
      list.push_front (item);
   };
   while (! list.empty()) {
      item = list.front();
      list.pop_front();
      cout << "Pop: " << item << endl;
   };
};

