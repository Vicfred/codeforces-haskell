-- Vicfred
-- https://codeforces.com/problemset/problem/337/A

import Data.List
import Data.Char
import Control.Monad
import qualified Data.ByteString.Char8 as B

getIntList :: IO [Int]
getIntList = fmap (unfoldr (B.readInt . B.dropWhile isSpace)) B.getLine

solve :: Int -> [Int] -> Int
solve n = minimum . (zipWith subtract `ap` drop (n-1)) . sort

main :: IO ()
main = do
    [n, _] <- getIntList
    a <- getIntList
    print $ solve n a
