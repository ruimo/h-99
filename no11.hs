data Elem a = Multiple Int a | Single a deriving(Show)

-- input buf result
encodeModified' :: (Eq a) => [a] -> (Elem a) -> [Elem a] -> [Elem a]
encodeModified' [] t rs = (t:rs)
encodeModified' (a:as) (Single b) rs
  | a == b = encodeModified' as (Multiple 2 a) rs
  | otherwise = encodeModified' as (Single a) ((Single b):rs)
encodeModified' (a:as) (Multiple n b) rs
  | a == b = encodeModified' as (Multiple (n + 1) b) rs
  | otherwise = encodeModified' as (Single a) ((Multiple n b):rs)

encodeModified :: (Eq a) => [a] -> [Elem a]
encodeModified [] = []
encodeModified [a] = [Single a]
encodeModified (a:as) = (reverse (encodeModified' as (Single a) []))
