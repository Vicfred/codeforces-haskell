main = do
    n <- getLine
    ls <- getLine
    let ans = solve ls
    putStrLn $ show ans

solve :: String -> Int
solve [_] = 0
solve (x1:x2:ls)
    | x1 == x2 = 1 + solve (x1:ls)
    | otherwise = solve (x2:ls)
