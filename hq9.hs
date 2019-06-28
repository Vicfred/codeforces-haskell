-- Vicfred
-- https://codeforces.com/problemset/problem/133/A

solve :: String -> Bool
solve = any (flip elem "HQ9")

main = do
    s <- getLine
    putStrLn $ if solve s then "YES" else "NO"
