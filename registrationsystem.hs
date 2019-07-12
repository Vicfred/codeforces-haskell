-- Vicfred
-- https://codeforces.com/problemset/problem/4/C

import Data.List
import qualified Data.Map as M

solve :: (Num a, Show a) => M.Map [Char] a -> [Char] -> (M.Map [Char] a, [Char])
solve acc x = (M.insertWith (+) x 1 acc, maybe "OK" ((x ++) . show) $ M.lookup x acc)

main :: IO ()
main = interact $ unlines . snd . mapAccumL solve M.empty . tail . words
