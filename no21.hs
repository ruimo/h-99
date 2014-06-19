insertAt :: a -> [a] -> Int -> [a]
insertAt _ [] _ = []
insertAt c as 1 = (c:as)
insertAt c (a:as) n = a:(insertAt c as (n - 1))
