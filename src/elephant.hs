solve :: Int -> Int
solve = (`div` 5) . (+4)

main :: IO ()
main = getLine >>= print . solve . read 
