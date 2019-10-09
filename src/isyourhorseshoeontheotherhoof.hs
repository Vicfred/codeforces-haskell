-- Vicfred
-- https://codeforces.com/problemset/problem/228/A

import Data.List

solve :: [Int] -> Int
solve = (4-) . length . nub

main :: IO ()
main = do
    a <- getLine >>= return . map read . words
    print $ solve a
