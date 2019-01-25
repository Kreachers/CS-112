// $Id: stack.cc,v 320.1 2002-01-15 17:35:05-08 - - $

//
// stack.cc
// - at least it should be.  g++ needs template implementations
//   to be included in the source file.
//

#include "stack.h"

template< class Item >
Stack<Item>::~Stack(){
   while( ! empty() ) static_cast<void>( pop() );
};

template< class Item >
void Stack<Item>::push( const Item &item ){
   Node *new_top = new Stack<Item>::Node( item, top );
   top = new_top;
};

template< class Item >
Item Stack<Item>::pop(){
   if( empty() ) throw Stack_Underflow;
   Node *old = top;
   top = top->link;
   Item result = old->item; // Item::operator=
   delete old;
   return result; // Item( const Item & ) // copy ctor
};
