-- https://codeforces.com/problemset/problem/118/A

import Data.Char
import Data.List

solve :: String -> String
solve = ('.':) . intersperse '.' . filter (flip notElem "aoeuiy") . map toLower

main :: IO ()
main = do
    s <- getLine
    putStrLn $ solve s

