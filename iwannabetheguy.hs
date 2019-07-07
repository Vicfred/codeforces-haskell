-- Vicfred
-- https://codeforces.com/problemset/problem/469/A

import Data.List
import Data.Char
import qualified Data.ByteString.Char8 as B

getIntList :: IO [Int]
getIntList = fmap (unfoldr (B.readInt . B.dropWhile isSpace)) B.getLine

solve :: Int -> [Int] -> [Int] -> Bool
solve lv a b = (==[1..lv]) . map head . group . sort $ a ++ b

main :: IO ()
main = do
    lv <- fmap read getLine
    a  <- fmap tail getIntList
    b  <- fmap tail getIntList
    putStrLn $ if solve lv a b then "I become the guy." else "Oh, my keyboard!"
