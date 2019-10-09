-- https://codeforces.com/contest/71/problem/A

import Control.Monad

solve :: String -> String
solve s =
    let len = length s
    in if len <= 10
        then s
        else ([head s] ++ show (len - 2) ++ [last s])

main :: IO ()
main = do
    n <- getLine
    inputs <- replicateM (read n) getLine
    let answers = map solve inputs
    sequence_ (map putStrLn answers)

