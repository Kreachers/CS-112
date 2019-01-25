#!/usr/local/bin/ghci

-- module Main
-- where

import List
import Control.Arrow

type Comparator a = (a -> a -> Ordering)

ascending :: (Ord a) => (b -> a) -> Comparator b
ascending f x y = compare (f x) (f y)

descending :: (Ord a) => (b -> a) -> Comparator b
descending = flip . ascending

secondary :: Comparator a -> Comparator a -> Comparator a
secondary f g x y = case f x y of {
                    EQ -> g x y;
                    z  -> z; }

-- Returns a list of unique elements together with their frequency.
-- Listed in decreasing order of frequency, followed by
-- increasing order of the elements.
count :: (Ord a) => [a] -> [(a, Int)]
count = map (head &&& length) 
      . sortBy (descending length `secondary` ascending head) 
      . group 
      . sort

main :: IO ()
main = interact $ unlines 
     . map (\(x, y) -> (take 20 $ x ++ repeat ' ') ++ " : " ++ show y) 
     . count 
     . words

