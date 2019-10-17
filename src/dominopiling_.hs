-- https://codeforces.com/problemset/problem/50/A

main :: IO ()
main = do interact $ show . (`div` 2) . product . map read . words

