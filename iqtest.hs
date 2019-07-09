-- Vicfred
-- https://codeforces.com/problemset/problem/25/A

import Data.List
import Data.Maybe

solve :: [Int] -> Int
solve a | length (filter odd a) == 1 = 1 + fromJust (findIndex odd a)
        | otherwise                  = 1 + fromJust (findIndex even a)

main :: IO ()
main = print . solve . map read . tail . words =<< getContents
