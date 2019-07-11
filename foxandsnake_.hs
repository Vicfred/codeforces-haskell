-- Vicfred
-- https://codeforces.com/problemset/problem/510/A

draw :: [Int] -> [String]
draw (n:m:_) = take n $ cycle [full, right, full, left]
    where full  = replicate m '#'
          left  = '#':replicate (m-1) '.'
          right = reverse left

solve :: String -> [String]
solve = draw . map read . words

main :: IO ()
main = do
    input <- getLine
    mapM_ putStrLn $ solve input
