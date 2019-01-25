// $Id: count-byte-heap.cc,v 340.6 2004-01-26 16:24:41-08 - - $

#include <iostream>
#include <queue>
#include <utility>
#include <functional>
#include <vector>

using namespace std;


typedef unsigned char uchar_t;

struct node{
   int count;
   uchar_t byte;
   node( int count, uchar_t byte ):
         count( count ), byte( byte ){};
   node( const node &that ):
         count( that.count ), byte( that.byte ){};
};

bool operator<( node left, node right ){
   if( left.count > right.count ) return true;
   if( left.count < right.count ) return false;
   return left.byte > right.byte;
};

bool operator>=( node left, node right ){
   return ! ( left < right );
};

typedef priority_queue< node > heap_t;

ostream &operator<< ( ostream &out, const node &count_byte ){
   return out << "(" << count_byte.count << ","
              << count_byte.byte << ")";
};

int main(){

   int count;
   uchar_t byte;
   heap_t heap;

   // Read in some int/char pairs.
   while( cin >> count >> byte ){
      cout << "input = " << count << "(" << byte << ")" << endl;
      heap.push( node( count, byte ));
   };

   // Write out the Pairs.
   while( ! heap.empty() ){
      cout << "output = " << heap.top() << endl;
      heap.pop();
   };
};
