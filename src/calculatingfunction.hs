-- Vicfred
-- https://codeforces.com/problemset/problem/486/A
import Data.Int

solve :: Int64 -> Int64
solve n = if even n then n `div` 2 else -1 - (n `div` 2)

main :: IO ()
main = getLine >>= print . solve . read
