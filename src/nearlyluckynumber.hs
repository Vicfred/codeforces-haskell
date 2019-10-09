-- Vicfred
-- https://codeforces.com/problemset/problem/110/A

import Data.Char
import Data.Int

digits :: Show a => a -> [Int]
digits = map digitToInt . show

islucky :: Int -> Bool
islucky 4 = True
islucky 7 = True
islucky _ = False

solve :: Int64 -> Bool
solve = all islucky . digits . length. filter islucky . digits

main :: IO ()
main = do
    n <- fmap read getLine
    putStrLn $ if solve n then "YES" else "NO"
