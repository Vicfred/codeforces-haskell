-- Vicfred
-- https://codeforces.com/problemset/problem/69/A

import Control.Monad
import Data.Char
import Data.List
import qualified Data.ByteString.Char8 as B

solve :: [[Int]] -> Bool
solve = (==[0,0,0]) . foldl1 (zipWith (+))

main = do
    n <- fmap read getLine
    a <- replicateM n getIntList
    putStrLn $ if solve a then "YES" else "NO"

getIntList :: IO [Int]
getIntList = fmap (unfoldr (B.readInt . B.dropWhile isSpace)) B.getLine
