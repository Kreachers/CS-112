// $Id: stack.cc,v 360.1 2006-02-02 14:34:41-08 - - $

#include "stack.h"

template <typename item_t>
stack<item_t>::~stack () {
   while (top != 0) {
      stack<item_t>::node<item_t> *oldtop = top;
      top = top->link;
      delete oldtop;
   };
}

template <typename item_t>
void stack<item_t>::push (const item_t &item) {
   stack<item_t>::node<item_t> *newtop =
         new stack<item_t>::node<item_t> (item, top);
   top = newtop;
}

template <typename item_t>
item_t stack<item_t>::pop () {
   if (empty ()) throw emptyexn();
   stack<item_t>::node<item_t> *oldtop = top;
   top = top->link;
   item_t item = oldtop->item;
   delete oldtop;
   return item;
}

