-- Vicfred
-- https://codeforces.com/contest/337/problem/A

import Data.List
main = do
  [n, m] <- getLine >>= return. map read. words
  a <- getLine >>= return. sort. map read. words
  print. minimum. map (\(a, b) -> b - a). zip a. drop (n - 1) $ a
