import System.Random

rand :: Int -> Int -> [Int]
rand from to = randomRs (from, to) (mkStdGen 12345)

getAt :: [a] -> Int -> a
getAt (a:as) 1 = a
getAt (a:as) n = getAt (as) (n - 1)

rnd_select' :: [a] -> [Int] -> [a]
rnd_select' as [] = []
rnd_select' as (r:rs) = (getAt as r):(rnd_select' as rs)

rnd_select :: [a] -> Int -> [a]
rnd_select [] _ = []
rnd_select as n = rnd_select' as (take n (rand 1 (length as)))
