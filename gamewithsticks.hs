-- Vicfred
-- https://codeforces.com/problemset/problem/451/A

solve :: [Int] -> String
solve [a,b] = if even (min a b) then "Malvika" else "Akshat"

main :: IO ()
main = getLine >>= putStrLn . solve . map read . words
