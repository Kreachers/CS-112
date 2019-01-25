// $Id: stl-map.cc,v 1.1 2008-01-28 17:55:24-08 - - $
//
// Example use of STL hash_map.
//

#include <cstdlib>
#include <iostream>
#include <map>
#include <string>
#include <utility>

using namespace std;

int main (int argc, char **argv) {
   typedef map< string, int, less<string> > argmap_t;
   argmap_t argmap;

   // load the hash map
   for (int argi = 0; argi < argc; argi++) {
      cout << "argv[" << argi << "] = " << argv[argi] << endl;
      string arg = argv[argi];
      argmap[arg] = argi;
   };
   cout << endl;

   // look up entries in the hash map
   for (int argi = 0; argi < argc; argi++) {
      string arg = argv[argi];
      cout << "Lookup: " << arg << " => " << argmap[arg] << endl;
   };
   cout << endl;

   // print out the hash table
   for (argmap_t::iterator itor = argmap.begin();
        itor != argmap.end(); itor++) {
      pair<const string, int> thispair = *itor;
      cout << "Iterated: " << thispair.first << " is "
           << thispair.second << endl;
   };
   cout << endl;

   return EXIT_SUCCESS;
};

