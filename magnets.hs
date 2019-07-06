-- Vicfred
-- https://codeforces.com/problemset/problem/344/A

import Data.List

main :: IO ()
main = getContents >>= print . length . group . tail . lines
