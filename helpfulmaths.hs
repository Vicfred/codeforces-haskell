import Data.List

solve :: String -> String
solve = intersperse '+' . sort . filter (/= '+')

main = getLine >>= putStrLn . solve
