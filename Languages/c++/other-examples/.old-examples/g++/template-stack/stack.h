// $Id: stack.h,v 320.1 2002-01-15 17:35:05-08 - - $

#ifndef __STACK_H__
#define __STACK_H__

//
// stack.h
//

#pragma interface

template< class Item >
class Stack{
   public:
      enum Exception{ Stack_Underflow };
      Stack(): top( 0 ){};
      ~Stack();
      bool empty() const{ return top == 0; };
      void push( const Item & );
      Item pop();
   private:
      struct Node{
         Item item;
         Node *link;
         Node( const Item &item, Node *link ):
               item( item ), link( link ){ };
      };
   private:
      Node *top;
      Stack( const Stack & ); // disabled.
      Stack &operator=( const Stack & ); // disabled.
};

#endif
