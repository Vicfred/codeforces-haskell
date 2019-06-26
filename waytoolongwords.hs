-- Vicfred
-- Codeforces
-- Way Too Long Words https://codeforces.com/problemset/problem/71/A

main =  do
    w <- getLine
    words <- getContents
    putStrLn . unlines . map transform . lines $ words

transform :: String -> String
transform s
    | (length s <= 10) = s
    | otherwise = ([head s] ++ show (length s - 2) ++ [last s])
