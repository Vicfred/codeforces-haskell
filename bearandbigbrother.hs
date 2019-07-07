-- Vicfred
-- https://codeforces.com/problemset/problem/791/A

solve :: [Int] -> Int
solve [a,b] | a > b = 0
            | otherwise = 1 + solve [a*3, b*2]

main :: IO ()
main = print . solve . map read . words =<< getLine
