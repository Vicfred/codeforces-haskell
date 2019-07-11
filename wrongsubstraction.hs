-- Vicfred
-- https://codeforces.com/problemset/problem/977/A

solve :: Int -> Int -> Int
solve n k
    | k == 0            = n
    | n `mod` 10 == 0   = solve (n `div` 10) (k - 1)
    | otherwise         = solve (n - 1) (k - 1)

main :: IO ()
main = do
    [n, k] <- fmap (map read . words) getLine
    print $ solve n k
