-- Vicfred
-- https://codeforces.com/problemset/problem/41/A

solve :: String -> String -> Bool
solve = (==) . reverse

main :: IO ()
main = do
    s <- getLine
    t <- getLine
    putStrLn $ if solve s t then "YES" else "NO"
