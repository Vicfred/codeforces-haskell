-- Vicfred
-- https://codeforces.com/problemset/problem/492/B

import Data.List

solve :: Int -> [Int] -> Double
solve l a = max (fromIntegral (max (head sa) (l - last sa))) x
    where sa = sort a
          x  = (fromIntegral . maximum $ 0 : zipWith (-) (tail sa) sa) / 2

main :: IO ()
main = do
    [_, l] <- fmap (map read . words) getLine
    a <- fmap (map read . words) getLine
    print $ solve l a
