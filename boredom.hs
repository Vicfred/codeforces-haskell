-- Vicfred
-- https://codeforces.com/problemset/problem/455/A

import Data.Int
import Data.Array

solve1 :: Array Int Int64 -> Int -> Int64
solve1 a = (r !)
    where r = listArray (0, 100000) (0 : a ! 1 : map f [2..100000])
          f i = max (r ! (i - 1)) (a ! i + r ! (i - 2))

(+^) :: Int64 -> Int -> Int64
a +^ b = a + fromIntegral b

solve :: [Int] -> Int64
solve a = solve1 cnt 100000
    where cnt = accumArray (+^) 0 (1, 100000) (zip a a)

main :: IO ()
main = do
    getLine
    nums <- fmap read . words <$> getLine :: IO [Int]
    print $ solve nums
