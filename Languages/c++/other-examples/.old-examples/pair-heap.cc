// $Id: pair-heap.cc,v 330.2 2003-01-22 10:09:42-08 - - $

#include <iostream>
#include <queue>
#include <utility>
#include <vector>

using namespace std;

typedef unsigned char uchar_t;
typedef pair< int, uchar_t > count_byte_t;
typedef priority_queue< count_byte_t, vector<count_byte_t>,
        greater_equal<count_byte_t> > heap_t;

ostream &operator<< ( ostream &out, const count_byte_t &count_byte ){
   return out << "(" << count_byte.first << ","
              << count_byte.second << ")";
};

int main(){

   int count;
   uchar_t byte;
   heap_t heap;

   // Read in some int/char pairs.
   while( cin >> count >> byte ){
      cout << "input = " << count << "(" << byte << ")" << endl;
      heap.push( count_byte_t( count, byte ));
   };

   // Write out the Pairs.
   while( ! heap.empty() ){
      cout << "output = " << heap.top() << endl;
      heap.pop();
   };
};
