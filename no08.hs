compress :: (Eq a) => [a] -> [a]
compress [] = []
compress [a] = [a]
compress (a:b:xs)
  | a == b = a:(compress xs)
  | otherwise = a:(compress (b:xs))
