// $Id: tree-heap.cc,v 340.5 2004-01-26 17:16:39-08 - - $

#include <iostream>
#include <queue>
#include <utility>
#include <functional>
#include <vector>

using namespace std;

typedef unsigned char uchar_t;
struct tree_t;
struct treeptr_t;
typedef priority_queue< treeptr_t > heap_t;

struct treeptr_t{
   tree_t *tree;
   treeptr_t();
   treeptr_t( int, uchar_t );
};

struct tree_t{
   int count;
   uchar_t byte;
   treeptr_t left;
   treeptr_t right;
   tree_t( int, uchar_t );
};

tree_t::tree_t( int count, uchar_t byte ):
      count( count ), byte( byte ){
};

treeptr_t::treeptr_t(): tree( NULL ){
};

treeptr_t::treeptr_t( int count, uchar_t byte ):
      tree( new tree_t( count, byte )){
};

bool operator<( treeptr_t left, treeptr_t right ){
   if( left.tree->count > right.tree->count ) return true;
   if( left.tree->count < right.tree->count ) return false;
   return left.tree->byte > right.tree->byte;
};

bool operator>=( treeptr_t left, treeptr_t right ){
   return ! ( left < right );
};

ostream &operator<< ( ostream &out, const treeptr_t &treeptr ){
   return out << "(" << treeptr.tree->count << ","
              << treeptr.tree->byte << ")";
};

int main(){

   int count;
   uchar_t byte;
   heap_t heap;

   // Read in some int/char pairs.
   while( cin >> count >> byte ){
      cout << "input = " << count << "(" << byte << ")" << endl;
      heap.push( treeptr_t( count, byte ));
   };

   // Write out the Pairs.
   while( ! heap.empty() ){
      cout << "output = " << heap.top() << endl;
      heap.pop();
   };
};
