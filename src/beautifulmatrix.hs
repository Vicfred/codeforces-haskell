-- Vicfred
-- https://codeforces.com/problemset/problem/263/A

import Control.Monad
import Data.Char
import Data.Maybe
import Data.List

-- see https://stackoverflow.com/questions/29186541/why-is-this-haskell-program-so-much-slower-than-an-equivalent-python-one/29186898
import qualified Data.ByteString.Char8 as B

getIntList :: IO [Int]
getIntList = fmap (unfoldr (B.readInt . B.dropWhile isSpace)) B.getLine
-- getIntList = fmap (map read . words) getLine

solve :: [[Int]] -> Int
solve arr = abs (a - 2) + abs (b - 2)
    where a     = fromJust $ findIndex (elem 1) arr
          arr0  = fromJust $ find (elem 1) arr
          b     = fromJust $ elemIndex 1 arr0

main = replicateM 5 getIntList >>= putStrLn . show . solve
