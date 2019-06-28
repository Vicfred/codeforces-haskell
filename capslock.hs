-- Vicfred
-- https://codeforces.com/problemset/problem/131/A

import Data.Char

accident :: String -> Bool
accident = all isUpper . tail

flipcase :: Char -> Char
flipcase c = if isLower c then toUpper c else toLower c

solve :: String -> String
solve s = if accident s then map flipcase s else s

main :: IO ()
main = getLine >>= putStrLn . solve
