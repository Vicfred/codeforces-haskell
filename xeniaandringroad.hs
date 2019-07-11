-- Vicfred
-- https://codeforces.com/problemset/problem/339/B

import Data.Int

dist :: Int -> Int -> Int -> Int
dist n a b = if b >= a then b - a else n + b - a

solve :: Int -> [Int] -> Int64
solve n a = sum $ map fromIntegral $ zipWith (dist n) (1:a) a


main :: IO ()
main = do
    [n, _] <- map read . words <$> getLine :: IO [Int]
    a <- map read . words <$> getLine :: IO [Int]
    print $ solve n a
