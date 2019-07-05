-- Vicfred
-- https://codeforces.com/problemset/problem/318/A

solve :: [Int] -> Int
solve [n,k] = if k <= m then 2*k-1 else 2*(k-m)
              where m = (n+1) `div` 2

main :: IO ()
main = getLine >>= print . solve . map read . words
