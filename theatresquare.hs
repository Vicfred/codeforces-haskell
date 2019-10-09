-- https://codeforces.com/problemset/problem/1/A

main :: IO ()
main = do
    input <- getLine
    let [n, m, a] = map read (words input)
    putStrLn $ show $ ceiling (n/a) * ceiling(m/a)
