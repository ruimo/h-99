-- input from to result
slice' :: [a] -> Int -> Int -> [a] -> [a]
slice' [] _ _ rs = reverse rs
slice' (a:as) 1 1 rs = reverse (a:rs)
slice' (a:as) 1 to rs = slice' as 1 (to - 1) (a:rs)
slice' (a:as) from to rs = slice' as (from - 1) (to - 1) rs

slice :: [a] -> Int -> Int -> [a]
slice as from to = slice' as from to []
