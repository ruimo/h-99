-- Arg: input buf result
pack' :: (Eq a) => [a] -> [a] -> [[a]] -> [[a]]
pack' [] bs rs = bs:rs
pack' (a:as) [] rs = pack' as [a] rs
pack' (a:as) bs rs
  | a == (head bs) = pack' as (a:bs) rs
  | otherwise = pack' as [a] (bs:rs)

pack :: (Eq a) => [a] -> [[a]]
pack as = (reverse (pack' as [] []))
