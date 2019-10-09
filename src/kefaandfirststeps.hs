-- Vicfred
-- https://codeforces.com/problemset/problem/580/A

import Data.List
import Data.Char
import qualified Data.ByteString.Char8 as B

getIntList :: IO [Int]
getIntList = fmap (unfoldr (B.readInt . B.dropWhile isSpace)) B.getLine

incGroup :: Ord a => [a] -> [[a]]
incGroup [] = [[]]
incGroup [x] = [[x]]
incGroup (x:t@(y:_)) = if x <= y then (x : hz) : tz else [x] : z
                        where z@(hz:tz) = incGroup t

solve :: [Int] -> Int
solve = maximum . map length . incGroup

main :: IO ()
main = do
    _ <- getLine
    a <- getIntList
    print $ solve a
