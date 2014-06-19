-- input n work
rotateLeft :: [a] -> Int -> [a] -> [a]
rotateLeft as 0 work = as ++ (reverse work)
rotateLeft (a:as) n work = rotateLeft as (n - 1) (a:work)

rotate :: [a] -> Int -> [a]
rotate as n
  | n < 0 = rotate as (n + (length as))
  | otherwise = rotateLeft as n []
