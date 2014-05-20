myReverse' :: [a] -> [b] -> [a]
myReverse' [a] bs = a:bs
myReverse' (a:as) bs = myReverse' as (a:bs)

myReverse :: [a] -> [a]
myReverse as = myReverse' as []
