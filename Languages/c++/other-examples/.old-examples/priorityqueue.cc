// $Id: priorityqueue.cc,v 320.3 2002-01-10 19:18:14-08 - - $

#include <cstdlib>
#include <iostream>
#include <queue>
#include <vector>

using namespace std;

//
// Read in numbers and print them out sorted.
// Use a priority queue to keep them sorted.
//

int main(){
   double number;

   // Choose either a less-heap or a greater_equal-heap,
   // depending on what you want at the root of the heap.
   //
   // priority_queue< vector<double>, less<double> > heap;
   priority_queue< double, vector<double>, greater_equal<double> > heap;

   // Read in some numbers.
   while( cin >> number ){
      cout << "input = " << number << endl;
      heap.push( number );
   };

   // Write out the numbers.
   while( ! heap.empty() ){
      cout << "output = " << heap.top() << endl;
      heap.pop();
   };
};
