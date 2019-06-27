-- Vicfred
-- https://codeforces.com/problemset/problem/236/A

import Data.List

solve :: String -> Bool
solve = even . length . group . sort

main = do
    s <- getLine
    putStrLn $ if solve s then "CHAT WITH HER!" else "IGNORE HIM!"
