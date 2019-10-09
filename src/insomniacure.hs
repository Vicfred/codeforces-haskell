-- Vicfred
-- https://codeforces.com/problemset/problem/148/A

main :: IO ()
main = do
    [k, l, m, n, d] <- getContents >>= return . map read . words :: IO [Integer]
    print . length . filter (\x -> any (\s -> x `mod` s == 0) [k, l, m, n]) $ [1..d]
