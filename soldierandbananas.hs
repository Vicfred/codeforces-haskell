-- Vicfred
-- https://codeforces.com/problemset/problem/546/A

import Data.List
import Data.Char
import qualified Data.ByteString.Char8 as B

solve :: Int -> Int -> Int -> Int
solve k n w = max 0 (w * (w + 1) `div` 2 * k - n)

main = do
    [k, n, w] <- getIntList
    putStrLn . show $ solve k n w

getIntList :: IO [Int]
getIntList = fmap (unfoldr (B.readInt . B.dropWhile isSpace)) B.getLine
