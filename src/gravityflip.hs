-- Vicfred
-- https://codeforces.com/problemset/problem/405/

import Data.List

main :: IO ()
main = interact $ unwords . map show . sort . map (read :: [Char] -> Int) . tail . words
