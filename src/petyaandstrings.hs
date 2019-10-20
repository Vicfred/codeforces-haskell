-- https://codeforces.com/problemset/problem/112/A

import Data.Char

main :: IO ()
main = interact $ show . f . map (map toUpper) . lines

f (a:b:c) = if a == b then 0 else (if a < b then -1 else 1)

