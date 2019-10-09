-- Vicfred
-- https://codeforces.com/problemset/problem/231/A

import Control.Monad

main = do
    n <- readLn
    a <- replicateM n (fmap (map read . words) getLine)
    print . length . filter ((>=2) . sum) $ a
