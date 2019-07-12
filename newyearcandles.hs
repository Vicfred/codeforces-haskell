-- Vicfred
-- https://codeforces.com/problemset/problem/379/A

solve :: Int -> Int -> Int
solve a b = a + (a - 1) `div` (b - 1)

main :: IO ()
main = do
    [a,b] <- map read . words <$> getLine
    print $ solve a b
