// $Id: box.cc,v 1.9 2008-01-29 11:31:02-08 - - $
//
// NAME
//    box-item - illustrate simple container class
//
// DESCRIPTION
//    Creates boxes, puts and gets.
//    Shows the four default members being supplied.
//    Everything is in one file for convenience.
//    See comments for names of actual files.
//

#include <cstdlib>
#include <iostream>
#include <string>

using namespace std;

/////////////////////////////////////////////////////////////////
//
// box.h
//
/////////////////////////////////////////////////////////////////

template <class item_t>
class box {
      template <typename item_t>
      friend ostream &operator<< (ostream &out,
                  const box<item_t> &that);
   private:
      item_t item;
      box () {}; // Disabled, because no universal default value
   public:
      box (const box &that): item (that.item) {};
      box &operator= (const box that);
      ~box () {};
      // Note we omit explicit here, to allow implicit conv.
      box (item_t item): item(item) {};
      item_t get ();
      void put (item_t item);
};

/////////////////////////////////////////////////////////////////
//
// box.cc
//
/////////////////////////////////////////////////////////////////

template <class item_t>
box<item_t> &box<item_t> ::operator= (const box that) {
   if (this == &that) return *this;
   this->item = that.item;
};

template <class item_t>
item_t box<item_t> ::get (){
   return item;
};

template<class item_t>
void box<item_t> ::put (item_t newitem){
   item = newitem;
};

template <typename type>
ostream &operator<< (ostream &out, const box<type> &that){
   return out << "box[" << that.item << "]";
};

/////////////////////////////////////////////////////////////////
//
// main.cc
//
/////////////////////////////////////////////////////////////////

int main (int argc, char **argv) {
   box<int> b = 0;
   cout << "line 1: " << b.get () << endl;
   b.put (3);
   cout << "line 2: " << b.get () << endl;
   box<string> s = string ("");
   cout << "line 3: " << s.get () << endl;
   s.put ("foobar");
   cout << "line 4: " << s.get () << endl;
   box<string> t = s;
   cout << "line 5: " << t.get () << endl;
   box<string> u = string ("quux");
   u = s;
   cout << "line 6: " << u.get () << endl;
   cout << endl << "line 7: " << b << s << t << u << endl;
   return EXIT_SUCCESS;
};
