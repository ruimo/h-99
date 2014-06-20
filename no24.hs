import System.Random

rand :: Int -> Int -> [Int]
rand from to = randomRs (from, to) (mkStdGen 12345)


rnd_select :: Int -> Int -> [Int]
rnd_select n to = take n $ rand 1 to
