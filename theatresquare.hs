main = do
    input <- getLine
    let [n, m, a] = map read (words input)
    putStrLn $ show $ ceiling (n/a) * ceiling(m/a)
