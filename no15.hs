repli :: [a] -> Int -> [a]
repli [] _ = []
repli as 0 = []
repli as 1 = as
repli [a] n = a:(repli [a] (n - 1))
repli (a:as) n = (repli [a] n) ++ (repli as n)
