-- Vicfred
-- https://codeforces.com/problemset/problem/500/A

solve :: Int -> [Int] -> Bool
solve 1 _   = True
solve _ []  = False
solve t a@(h:_) = solve (t-h) (drop h a)

main :: IO ()
main = do
    [_, t] <- map read . words <$> getLine :: IO [Int]
    a <- map read . words <$> getLine :: IO [Int]
    putStrLn $ if solve t a then "YES" else "NO"
