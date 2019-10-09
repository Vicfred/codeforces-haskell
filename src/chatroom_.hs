-- Vicfred
-- https://codeforces.com/problemset/problem/58/A

solve :: String -> String
solve s = sub "hello" s
      where
        sub [] _ = "YES"
        sub _ [] = "NO"
        sub (x:xs) (y:ys) = if x==y then sub xs ys else sub (x:xs) ys

main = interact$solve.head.words
