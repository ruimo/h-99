elementAt :: [a] -> Integer -> a
elementAt (a:xs) 0 = a
elementAt (_:xs) n = elementAt xs (n - 1)
