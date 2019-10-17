-- https://codeforces.com/problemset/problem/50/A

main :: IO ()
main = print . (`div` 2) . product . map read . words =<< getLine

