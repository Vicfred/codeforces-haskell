isok :: Int -> String
isok x = if x >= 4 && even x then "YES" else "NO"

main = do
    xx <- getLine
    let x = (read xx :: Int)
    putStrLn $ isok x
