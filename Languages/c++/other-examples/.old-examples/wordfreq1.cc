// $Id: wordfreq1.cc,v 331.2 2003-02-27 13:49:23-08 - - $
//
// Count the words read from stdin, converted to lower case.
// At EOF, print the frequency table.
//

#include <iostream>
#include <locale>
#include <map>
#include <string>
#include <utility>

using namespace std;

typedef map <string, int, less<string> > freq;

void incr (freq& freq, string& word){
   if (word.size() > 0){ ++freq[word]; word = ""; };
};

int main (int argc, char **argv){
   freq freq;
   string word = "";
   setlocale (LC_CTYPE, "");
   for (int chr = cin.get(); ! cin.eof(); chr = cin.get()){
      if (isalpha (chr)) word += tolower (chr);
                    else incr (freq, word);
   };
   incr (freq, word);
   for (freq::iterator itor = freq.begin(); itor != freq.end(); ++itor){
      cout << itor->first << " " << itor->second << endl;
   };
   return EXIT_SUCCESS;
};

