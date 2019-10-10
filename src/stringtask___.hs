-- https://codeforces.com/problemset/problem/118/A

import Data.Char

convert :: String -> String
solve = concatMap (('.':) . return) . filter (flip notElem "aoyeui") . map toLower

main :: IO ()
main = interact $ unlines . map solve . lines

