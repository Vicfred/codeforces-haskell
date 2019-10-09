-- Vicfred
-- https://codeforces.com/problemset/problem/467/A

rooms :: [[Int]] -> Int
rooms = length . filter (\(p:q:_) -> q - p >= 2)

solve :: String -> String
solve = show . rooms . parse

parse :: String -> [[Int]]
parse = fmap (fmap read . words) . tail . lines

main :: IO ()
main = interact solve
