isok :: Int -> String
isok x = if x >= 4 && even x then "YES" else "NO"

main = do
    x <- readLn
    putStrLn $ isok x
