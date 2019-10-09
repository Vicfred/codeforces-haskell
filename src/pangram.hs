-- Vicfred
-- https://codeforces.com/problemset/problem/520/A

import Data.List
import Data.Char

solve :: String -> Bool
solve = (==26) . length . nub . map toLower

main :: IO ()
main = do
    getLine
    s <- getLine
    putStrLn $ if solve s then "YES" else "NO"
