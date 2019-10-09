-- Vicfred
-- https://codeforces.com/problemset/problem/141/A

import Data.List

solve :: [String] -> String
solve [a,b,c] = if sort (a ++ b) == sort c then "YES" else "NO"

main :: IO ()
main = interact $ solve . lines
