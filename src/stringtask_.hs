-- https://codeforces.com/problemset/problem/118/A

import Data.Char

convert c acc
    | (toLower c) `elem` "aeiouy" = acc
    | otherwise = '.':(toLower c):acc

main :: IO ()
main = do
    input <- getLine
    putStrLn $ foldr convert "" input

