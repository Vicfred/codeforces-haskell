-- Vicfred
-- https://codeforces.com/problemset/problem/705/A

hate :: Int -> String
hate 1 = "I hate it"
hate n = "I hate that " ++ love (n-1)

love :: Int -> String
love 1 = "I love it"
love n = "I love that " ++ hate (n-1)

main :: IO ()
main = readLn >>= putStrLn . hate
