-- input n currentN
dropEvery' :: [a] -> Int -> Int -> [a]
dropEvery' [] _ _ = []
dropEvery' (a:as) n 1 = dropEvery' as n n
dropEvery' (a:as) n c = a:(dropEvery' as n (c - 1))

dropEvery :: [a] -> Int -> [a]
dropEvery as n = dropEvery' as n n
