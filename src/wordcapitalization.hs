-- Vicfred
-- https://codeforces.com/problemset/problem/281/A

import Data.Char

main = do
    line <- getLine
    putStrLn ((toUpper $ head line) : (tail line))
