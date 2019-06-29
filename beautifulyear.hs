-- Vicfred
-- https://codeforces.com/problemset/problem/271/A

import Data.List

distinct :: Ord a => [a] -> Bool
distinct = all ((== 1) . length) . group . sort

solve :: Int -> Int
solve y = head $ filter (distinct . show) [y + 1 ..]

main :: IO ()
main = getLine >>= putStrLn . show . solve . read
