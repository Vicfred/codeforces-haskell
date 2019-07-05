-- Vicfred
-- https://codeforces.com/problemset/problem/734/A

solve :: String -> String
solve s
    | a > d     = "Anton"
    | a < d     = "Danik"
    | otherwise = "Friendship"
        where a = length $ filter (=='A') s
              d = (length s) - a

main :: IO ()
main = do
    readLn :: IO Int
    s <- getLine
    putStrLn $ solve s
