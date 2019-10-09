-- Vicfred
-- https://codeforces.com/problemset/problem/61/A

chxor :: Char -> Char -> Char
chxor a b = if a == b then '0' else '1'

main :: IO ()
main = do
    s <- getLine
    t <- getLine
    putStrLn $ zipWith chxor s t
