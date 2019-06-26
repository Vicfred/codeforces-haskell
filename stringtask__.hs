-- Vicfred
-- https://codeforces.com/problemset/problem/118/A

import Data.Char

convert :: String -> String
convert target = concat [['.', x] | x <- (map toLower target), not(x `elem` "aeiouy")]

main = do
    s <- getLine
    putStrLn $ convert s
