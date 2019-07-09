-- Vicfred
-- https://codeforces.com/problemset/problem/144/A

import Data.List
import Data.Char
import qualified Data.ByteString.Char8 as B

getIntList :: IO [Int]
getIntList = fmap (unfoldr (B.readInt . B.dropWhile isSpace)) B.getLine

solve :: [Int] -> Int
solve a = maxH + (n - 1 - minL) + (if maxH < minL then 0 else -1)
    where n     = length a
          maxi  = maximum a
          mini  = minimum a
          maxH  = head $ elemIndices maxi a
          minL  = last $ elemIndices mini a

main :: IO ()
main = do
    _ <- getLine
    a <- getIntList
    print $ solve a
