count x = length . filter (x==)

divUp x y = div (x + y - 1) y

solve a = fours + threes + divUp ((max (ones - threes) 0) + twos * 2) 4
  where
    ones   = count 1 a
    twos   = count 2 a
    threes = count 3 a
    fours  = count 4 a

main =  print . solve . map read . words . last . lines =<< getContents
