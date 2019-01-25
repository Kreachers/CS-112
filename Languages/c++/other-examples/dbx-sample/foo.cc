//
// $Id: foo.cc,v 320.3 2002-01-22 18:06:02-08 - - $
//
// This program has a bug in it.  It puts everything in argv into
// a list, then prints out the list.  However, there is no loop
// termination check, and the program crashes at end of list.
//

#include <cassert>
#include <cstdlib>
#include <iostream>
#include <string>

using namespace std;

struct List{
   string item;
   List *next;
};

ostream &operator<< ( ostream &out, List &node ){
   out << &node << "-> List{ " << node.item << ", "
       << node.next << " }";
   return out;
};

int main( int argc, char **argv ){

   List *list = NULL;

   for( int index = argc - 1; index > 0; index-- ){
      List *node = new List();
      assert( node != NULL );
      node->item = argv[index];
      node->next = list;
      cout << node << endl;
      list = node;
   };

   for( List *itor = list; true; itor = itor->next ){
      cout << *itor << endl;
   };

   return EXIT_SUCCESS;
};
