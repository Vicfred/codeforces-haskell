-- Vicfred
-- https://codeforces.com/problemset/problem/200/B

main :: IO ()
main = do
    n <- readLn :: IO Double
    a <- getLine >>= return . map read . words :: IO [Double]
    print (sum a / n)
