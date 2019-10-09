-- Vicfred
-- https://codeforces.com/problemset/problem/133/A

import Data.List

f [] = "NO"
f a = "YES"

main = interact $ f . intersect "HQ9"
