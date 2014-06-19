data Elem a = Multiple Int a | Single a deriving(Show)

-- input result
decodeModified' :: [Elem a] -> [a] -> [a]
decodeModified' [] rs = rs
decodeModified' ((Single a):as) rs = decodeModified' as (a:rs)
decodeModified' ((Multiple n a):as) rs
  | n > 2 = decodeModified' ((Multiple (n - 1) a):as) (a:rs)
  | otherwise = decodeModified' ((Single a):as) (a:rs)

decodeModified :: [Elem a] -> [a]
decodeModified as = (reverse (decodeModified' as []))