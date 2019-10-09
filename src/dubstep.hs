-- Vicfred
-- https://codeforces.com/problemset/problem/208/A

f :: String -> String
f('W':'U':'B':x) = ' ':f(g x)
f(x:xs) = x:f xs
f x = x

g :: String -> String
g('W':'U':'B':x) = g x
g x = x

main :: IO ()
main = getLine >>= putStrLn . f . g
