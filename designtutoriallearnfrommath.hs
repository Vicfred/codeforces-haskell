-- Vicfred
-- https://codeforces.com/problemset/problem/472/A

solve :: Int -> String
solve n = if odd n then "9 " ++ show (n - 9) else "4 " ++ show (n - 4)

main :: IO ()
main = interact $ solve . read
