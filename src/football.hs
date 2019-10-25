-- https://codeforces.com/problemset/problem/96/A

import Data.List

solve :: String -> Bool
solve = any ((>= 7) . length) . group

main :: IO ()
main = do
    s <- getLine
    putStrLn $ if solve s then "YES" else "NO"

