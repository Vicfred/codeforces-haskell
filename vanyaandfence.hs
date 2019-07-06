-- Vicfred
-- https://codeforces.com/problemset/problem/677/A

main :: IO ()
main = do
    [n,h] <- map read . words <$> getLine
    a <- map read . words <$> getLine
    let m = length $ filter (>h) a
    print $ n + m
