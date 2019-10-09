-- Vicfred
-- https://codeforces.com/contest/580/problem/A

solve :: [Int] -> Int -> Int
solve [x] m = m + 1
solve (x:xs) m
    | x <= head xs = solve xs (m+1)
    | otherwise = max (m+1) (solve xs 0)

main :: IO ()
main = do
    k <- getLine
    x <- getLine
    let args = map (\x -> read x :: Int) $ words x
    print $ solve args 0
