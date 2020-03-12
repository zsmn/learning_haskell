import Data.List

-- quicksort
quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (x:xs) = quicksort (filter (< x) xs) ++ [x] ++ quicksort (filter (>= x) xs)

-- fib
fib :: Int -> Int
fib a
    | a == 1             = 1
    | a == 2             = 1
    | otherwise          = fib (a - 1) + fib (a - 2)

getEvenFibAux :: Int -> Int -> [Int]
getEvenFibAux n a
    | n == 0                                = []
    | (fib a) `mod` 2 == 0                  = (fib a) : getEvenFibAux (n - 1) (a + 1)
    | otherwise                             = getEvenFibAux (n) (a + 1)

getEvenFib :: Int -> [Int]
getEvenFib n = getEvenFibAux n 1

-- calc bhaskara
bhaskara :: (Float, Float, Float) -> [Float]
bhaskara (a, b, c)
    | b^2 > (4.0 * a * c)              = ((-b + sqrt((b^2) - (4 * a * c))) / (2*a)) : ((-b - sqrt((b^2) - (4 * a * c))) / (2*a)) : []
    | b^2 == (4.0 * a * c)             = ((-b + sqrt((b^2) - (4 * a * c))) / (2*a)) : []
    | b^2 < (4.0 * a * c)              = []

