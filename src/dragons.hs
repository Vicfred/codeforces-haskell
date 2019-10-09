-- Vicfred
-- https://codeforces.com/problemset/problem/230/A

import Data.Maybe
import Control.Monad
import Data.List

fight :: Int -> (Int, Int) -> Maybe Int
fight s (x, y) = if s <= x then Nothing else Just (s + y)

solve :: Int -> [(Int, Int)] -> Bool
solve s = isJust . foldM fight s . sort

main :: IO ()
main = do
    [s, n] <- map read . words <$> getLine :: IO [Int]
    a <- replicateM n $ (\[x,y] -> (x, y)) <$> map read . words <$> getLine
    putStrLn $ if solve s a then "YES" else "NO"
