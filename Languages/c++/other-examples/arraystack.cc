// $Id: arraystack.cc,v 1.1 2008-01-29 18:09:47-08 - - $

//
// NAME
//    array implementation of a stack
//
// DESCRIPTION
//    Should really be in multiple files.
//

#include <cassert>
#include <cstdlib>
#include <iostream>
#include <string>

using namespace std;

/////////////////////////////////////////////////////////////////
// stack.h
/////////////////////////////////////////////////////////////////

template <typename item_t>
class stack {
   private:
      enum {EMPTY = -1};
      class fullerror {};
      class emptyerror {};
      int top;
      int size;
      item_t *data;
      void copydata (item_t *thatdata);
   public:
      explicit stack (int newsize = 16);
      stack (const stack &);
      ~stack ();
      stack &operator= (const stack<item_t> &);
      void push (item_t);
      item_t pop ();
      bool isempty () const;
      bool isfull () const;
};

/////////////////////////////////////////////////////////////////
// stack.cc
/////////////////////////////////////////////////////////////////

template <typename item_t>
stack<item_t>::stack (int newsize = 16):
   top (EMPTY), size (newsize)
{
   data = new item_t [size];
}

template <typename item_t>
stack<item_t>::stack (const stack<item_t> &that):
   top (that.top), size (that.size)
{
   copydata (that);
}

template <typename item_t>
stack<item_t>::~stack () {
   delete[] data;
}

template <typename item_t>
stack<item_t> &stack<item_t>::operator= (const stack<item_t> &that) {
   if (&this == &that) return;
   top = that.top;
   size = that.size;
   delete[] data;
   copydata (that);
   return *this;
}

template <typename item_t>
void stack<item_t>::copydata (item_t *thatdata) {
   data = new item_t [size];
   for (int itor = 0; itor < top; ++itor) {
      data[itor] = that.data[itor];
   }
}

template <typename item_t>
void stack<item_t>::push (item_t item) {
   if (isfull ()) throw stack<item_t>::fullerror ();
   data [++top] = item;
}

template <typename item_t>
item_t stack<item_t>::pop () {
   if (isempty ()) throw stack<item_t>::emptyerror ();
   return data [top--];
}

template <typename item_t>
bool stack<item_t>::isempty () const {
   return top == EMPTY;
}

template <typename item_t>
bool stack<item_t>::isfull () const {
   return top == size - 1;
}

/////////////////////////////////////////////////////////////////
// main.cc
/////////////////////////////////////////////////////////////////

int main (int argc, char **argv) {
   stack <string> argstack (argc);
   for (int argi = 1; argi < argc; ++argi) {
      string arg = argv[argi];
      cout << "argv[" << argi << "]=" << arg << endl;
      argstack.push (arg);
   }
   cout << "End first loop." << endl;
   while (! argstack.isempty ()) {
      cout << "Popping: " << argstack.pop() << endl;
   }
   cout << "End second loop." << endl;
}

