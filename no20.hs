-- n input work
removeAt' :: Int -> [a] -> [a] -> (a, [a])
removeAt' 1 (a:as) work = (a, (reverse work) ++ as)
removeAt' n (a:as) work = removeAt' (n - 1) as (a:work)

removeAt :: Int -> [a] -> (a, [a])
removeAt n as = removeAt' n as []
