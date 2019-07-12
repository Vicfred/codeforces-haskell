-- Vicfred
-- https://codeforces.com/problemset/problem/189/A

import Data.Array

solve :: Int -> [Int] -> Int
solve n ls = memo ! n
    where 
        dyn :: Int -> Int
        dyn 0 = 0
        dyn n = 1 + maximum (minBound : [memo ! (n - x) | x <- ls, n-x >= 0])
        memo = listArray (0,n) (map dyn [0..n])

main :: IO ()
main = do
    n:ls <- map read . words <$> getLine :: IO [Int]
    print $ solve n ls
