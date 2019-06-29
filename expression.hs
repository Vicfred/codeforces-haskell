-- Vicfred
-- https://codeforces.com/problemset/problem/479/A

solve :: Int -> Int -> Int -> Int
solve a b c = maximum [a + b + c, a * b * c, a * b + c, a + b * c, (a + b) * c, a * (b + c)]

main :: IO ()
main = do
    a <- fmap read getLine
    b <- fmap read getLine
    c <- fmap read getLine
    print $ solve a b c
