-- Vicfred
-- https://codeforces.com/problemset/problem/460/A

solve :: Int -> Int -> Int -> Int
solve 0 _ _ = 0
solve n m d = 1 + solve (n-1+new) m (d+1)
    where new = if (d `rem` m == 0) then 1 else 0

main :: IO ()
main = do
    [n, m] <- map read . words <$> getLine :: IO [Int]
    print $ solve n m 1
