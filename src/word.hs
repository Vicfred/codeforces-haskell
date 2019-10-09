-- Vicfred
-- https://codeforces.com/problemset/problem/59/A

import Data.Char

solve :: String -> String
solve s = map (if morel then toLower else toUpper) s
    where morel = length (filter isLower s) >=
                  length (filter isUpper s)

main :: IO ()
main = getLine >>= putStrLn . solve
