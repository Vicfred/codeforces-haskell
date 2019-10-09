-- Vicfred
-- https://codeforces.com/problemset/problem/160/A

import Data.List
import Data.Char
import qualified Data.ByteString.Char8 as B

getIntList :: IO [Int]
getIntList = fmap (unfoldr (B.readInt . B.dropWhile isSpace)) B.getLine

solve :: [Int] -> Int
solve a = (+1) . length . takeWhile (<= sum a `div` 2) . scanl1 (+) . sortBy (flip compare) $ a

main = do
    _ <- getLine
    a <- getIntList
    putStrLn . show $ solve a
