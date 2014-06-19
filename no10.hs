-- Arg: input buf result
encode' :: (Eq a) => [a] -> (Int, a) -> [(Int, a)] -> [(Int, a)]
encode' [] t rs = t:rs
encode' (a:as) t rs
  | a == (snd t) = encode' as ((fst t) + 1, (snd t)) rs
  | otherwise = encode' as (1, a) (t:rs)

encode :: (Eq a) => [a] -> [(Int, a)]
encode [] = []
encode [a] = [(1, a)]
encode (a:as) = (reverse (encode' as (1, a) []))
