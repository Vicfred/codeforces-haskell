-- https://codeforces.com/problemset/problem/4/A
f :: Int -> String
f x = if x >= 4 && even x then "YES" else "NO"

main = interact $ f . read
