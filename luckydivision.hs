-- Vicfred
-- https://codeforces.com/problemset/problem/122/A

islucky :: Int -> Bool
islucky 0 = True
islucky x = (x `mod` 10 == 4 || x `mod` 10 == 7) && islucky (x `div` 10)

solve :: Int -> Bool
solve x = any ((==0) . (x `mod`)) . filter islucky $ [1..x]

main = do
    n <- readLn
    putStrLn $ if solve n then "YES" else "NO"
