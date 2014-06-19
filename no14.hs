dupli :: (Eq a) => [a] -> [a]
dupli [] = []
dupli (a:as) = a:a:dupli(as)
