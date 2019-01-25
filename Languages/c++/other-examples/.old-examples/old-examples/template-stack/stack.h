// $Id: stack.h,v 360.2 2006-02-02 14:37:56-08 - - $
//
// Generic stack.
//

#ifndef __STACK_H__
#define __STACK_H__

template <typename item_t>
class stack {
   private:
      template <typename item_t> class node {
            friend class stack<item_t>;
         private:
            item_t item;
            node *link;
            node (const item_t &item, node *link):
                  item(item), link(link) {};
      };
      node<item_t> *top;
   public:
      stack (): top(0) {};
      ~stack ();
      bool empty () const {return top == 0; };
      void push (const item_t &);
      item_t pop ();
      enum emptyexn {};
};

#endif

