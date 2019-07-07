-- Vicfred
-- https://codeforces.com/problemset/problem/791/A

main :: IO ()
main = do
    [a,b] <- fmap (map read . words) getLine :: IO [Int]
    print . length $ takeWhile id [a*(3^p) <= b*(2^p) | p <- [0..]]
