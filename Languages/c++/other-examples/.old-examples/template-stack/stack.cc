// $Id: stack.h,v 352.2 2005/04/13 02:19:56 - - $
//
// NAME
//    stack - illustrate container class template stack
//
// DESCRIPTION
//    Shows the four default members and the usual stack operations
//    using the linked list implementation.
//

#include <iostream>
#include <string>

using namespace std;

/////////////////////////////////////////////////////////////////
//
// stack.h
//
/////////////////////////////////////////////////////////////////

template <typename Item>
class stack {
   template <typename Item>
   friend ostream &operator<< (ostream &out, const stack <Item> &that);
   public:
      enum underflow {};
      stack (): top (0) {};
      stack (const stack &that);
      stack &operator= (const stack &that);
      ~stack ();
      bool empty () const { return top == 0; };
      void push (const item &);
      item pop ();
      void clear ();
   private:
      struct node {
         Item item;
         node *link;
         node (Item &item
      };
      node *top;
};

/////////////////////////////////////////////////////////////////
//
// stack.cc
//
/////////////////////////////////////////////////////////////////

template <typename Item>
ostream &operator<< (ostream &out, const stack <Item> &that){
   out << "[";
   for (node itor = that.top; itor != 0; itor = itor->link) {
      out << itor->item << "; ";
   };
   out << "]";
};

template <typename Item>
stack<Item>::stack (const stack &that): top (0) {
};

template <typename Item>
stack<Item> &stack<Item>::operator= (const stack &that) {
   clear ();
   node end = &top;
   for (node itor = that.top; itor != 0; itor = itor->link) {
      
   };
};





// $Id: stack.cc,v 352.1 2005-04-12 19:18:46-07 - - $

//
// stack.cc
// - at least it should be.  g++ needs template implementations
//   to be included in the source file.
//

#include "stack.h"

template <class item>
stack <item>::~stack (){
   while (! empty()) static_cast <void> (pop());
};

template <class item>
void stack <item>::push (const item &anitem){
   node *new_top = new stack<item>::node (anitem, top);
   top = new_top;
};

template <class item>
item stack<item>::pop (){
   if( empty() ) throw EMPTY_EXN;
   node *old = top;
   top = top->link;
   item result = old->anitem; // item::operator=
   delete old;
   return result; // item (const item &) // copy ctor
};
// $Id: teststack.cc,v 352.1 2005-04-12 19:18:46-07 - - $

#include <iostream>
#include <string>

using namespace std;

#include "stack.h"

//
// main test harness
//

int main (int argc, char **argv) {
   string item;
   stack <string> thestack;
   while (cin >> item) {
      thestack.push (item);
      cout << "Pushed: " << item << endl;
   };
   while( ! thestack.empty ()){
      cout << "Popped: " << thestack.pop() << endl;
   };
   try {
      static_cast <void> (thestack.pop());
   }catch (stack<string>::STACK_EXN empty) {
      cout << "stack::exception " << empty << endl;
   };
   return 0;
};

