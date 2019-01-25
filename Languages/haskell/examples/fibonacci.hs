
module Main where
 
import Control.Exception as C
import System.Environment
import System.IO
 
fibonacci = 0 : 1 : zipWith (+) fibonacci (drop 1 fibonacci)
 
main = do
   argv <- getArgs
   name <- getProgName
   if not (null argv)
      then let which = head argv
               result = fibonacci !! read which
           in (putStr $ "Fibonacci (" ++ which ++ ") = "
               ++ (show result) ++ "\n")
              `C.catch` (\_ -> hPutStr stderr "Must be nonnegative\n")
      else hPutStr stderr $ "usage: " ++ name ++ " number\n"

