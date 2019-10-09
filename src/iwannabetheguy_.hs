-- Vicfred
-- https://codeforces.com/problemset/problem/469/A

import Data.List

main :: IO ()
main = do
  n <- readLn :: IO Int
  a <- getLine >>= return. tail. map read. words :: IO [Int]
  b <- getLine >>= return. (++a). tail. map read. words :: IO [Int]
  putStrLn $ if n == (length. nub $ b) then "I become the guy." else "Oh, my keyboard!"
