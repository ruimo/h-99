-- input n work
split' :: [a] -> Int -> [a] -> [[a]]
split' as 0 ws = [(reverse ws), as]
split' (a:as) n ws = split' as (n - 1) (a:ws)

split :: [a] -> Int -> [[a]]
split as n = split' as n []

