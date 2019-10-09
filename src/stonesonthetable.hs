-- Vicfred
-- https://codeforces.com/problemset/problem/266/A

import Data.List

solve :: String -> Int
solve s = length s - length (group s)

main = getLine >> getLine >>= putStrLn . show . solve
