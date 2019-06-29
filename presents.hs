-- Vicfred
-- https://codeforces.com/problemset/problem/136/A

import Data.List
import Data.Char
import Data.Array
import qualified Data.ByteString.Char8 as B

getIntList :: IO [Int]
getIntList = fmap (unfoldr (B.readInt . B.dropWhile isSpace)) B.getLine

solve :: [Int] -> [Int]
solve a = elems $ array (1, length a) (zip a [1..])

main :: IO ()
main = do
    _ <- getLine
    a <- getIntList
    putStrLn . intercalate " " . map show $ solve a
