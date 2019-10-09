-- https://codeforces.com/problemset/problem/158/A

main :: IO ()
main = do
    input <- getLine
    let [n, k] = map read (words input)
    input2 <- getLine
    let l = map read (words input2)
    let cutoff = max 1 (l !! (k - 1))
    putStrLn $ show (foldl (\acc x -> if x >= cutoff then (acc +  1) else acc) 0 l)

