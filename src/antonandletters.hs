-- Vicfred
-- https://codeforces.com/problemset/problem/443/A

import Data.List

solve :: String -> Int
solve = length . nub . filter (`notElem` "{, }")

main :: IO ()
main = do
    s <- getLine
    print $ solve s
