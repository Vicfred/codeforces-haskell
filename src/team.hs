-- https://codeforces.com/problemset/problem/231/A

import Control.Monad

main :: IO ()
main = do
    n <- readLn
    a <- replicateM n getList
    putStrLn . show $ solve a

solve :: [[Int]] -> Int
solve = length . filter ((>= 2) . sum)

getList :: Read a => IO [a]
getList = fmap (map read . words) getLine

