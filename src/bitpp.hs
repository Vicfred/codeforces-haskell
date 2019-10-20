-- https://codeforces.com/problemset/problem/282/A

main :: IO ()
main = interact $ show . f . tail . lines

f [] = 0
f (a:b) = (if elem '+' a then 1 else -1) + f b

