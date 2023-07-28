main :: IO ()
main = putStrLn . show . take 10 $ coeffs

accumulate :: [Int] -> [Int]
accumulate = scanl1 (+)

firstColumn :: [Int]
firstColumn = repeat 1

nextColumn :: [Int] -> [Int]
nextColumn = accumulate

simulate :: [Int] -> [Int]
simulate (x:xs) = x : simulate (nextColumn xs)

coeffs :: [Int]
coeffs = simulate firstColumn