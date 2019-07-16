-- Vicfred
-- https://codeforces.com/problemset/problem/155/A

import Control.Monad
import Data.List
import Data.Char
import qualified Data.ByteString.Char8 as B

getIntList :: IO [Int]
getIntList = fmap (unfoldr (B.readInt . B.dropWhile isSpace)) B.getLine

amazing :: (Int -> Int -> Bool) -> [Int] -> Int
amazing _ [] = 0
amazing f (h:t) = 1 + amazing f (dropWhile (f h) t)

solve :: [Int] -> Int
solve = subtract 2 . liftM2 (+) (amazing (<=)) (amazing (>=))

main :: IO ()
main = getLine >> getIntList >>= print . solve
