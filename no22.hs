range :: Int -> Int -> [Int]
range from to
  | from >= to = [to]
  | otherwise = from:(range (from + 1) to)
