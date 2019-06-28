-- Vicfred
-- https://codeforces.com/problemset/problem/266/B

import Data.List
import Data.Char
import qualified Data.ByteString.Char8 as B

getIntList :: IO [Int]
getIntList = fmap (unfoldr (B.readInt . B.dropWhile isSpace)) B.getLine

switch :: String -> String
switch [] = []
switch ('B':'G':t) = 'G':'B':switch t
switch (h:t) = h : switch t

solve :: Int -> String -> String
solve n = (!! n) . iterate switch

main :: IO ()
main = do
    [_,t] <- getIntList
    s <- getLine
    putStrLn $ solve t s
