double :: [Int] -> [Int]
double x 
    | x == [] = []
    | otherwise = (2*(head x) : double (tail x))

member :: [Int] -> Int -> Bool 
member x y 
    | x == [] = False
    | (head x) == y = True
    | otherwise = member (tail x) y

digits :: String -> String 
digits str
    | str == [] = []
    | (head str) >= '0' && (head str) <='9' = (head str : digits (tail str))
    | otherwise = digits (tail str)

sumPairs :: [Int] -> [Int] -> [Int]
sumPairs x y
    | length x == 0 && length y == 0 = []
    | length x == 0 = (head y) : sumPairs x (tail y)
    | length y == 0 = (head x) : sumPairs (tail x) y
    | otherwise = ((head x) + (head y)) : sumPairs (tail x) (tail y)

quicksort :: [Int] -> [Int]
quicksort x
    | x == [] = []
    | otherwise = quicksort(menor (tail x) (head x)) ++ [head x] ++ quicksort(maior (tail x) (head x))
        where
            menor a b
                | a == [] = []
                | (head a) < b = ((head a) : menor (tail a) b)
                | otherwise = menor (tail a) b
            maior a b 
                | a == [] = []
                | (head a) > b = ((head a) : maior (tail a) b)
                | otherwise = maior (tail a) b

parFib :: Int -> [Int]
parFib n = p' n 1 1 0
    where
        p' n i j tam
            | tam == n = []
            | (i+j) `mod` 2 == 0 = ((i+j) : p' n j (i+j) (tam+1))
            | otherwise =  p' n j (i+j) tam

s :: Int -> Int
s n
    | n == 0 = 0
    | otherwise = (n `mod` 10) + s (n `div` 10)

qsSum :: [Int] -> [Int]
qsSum x
    | x == [] = []
    | otherwise = qsSum(menor (tail x) (s (head x))) ++ [head x] ++ qsSum(maior (tail x) (s (head x)))
        where
            menor a b
                | a == [] = []
                | (s(head a)) < b = ((head a) : menor (tail a) b)
                | otherwise = menor (tail a) b
            maior a b 
                | a == [] = []
                | (s (head a)) >= b = ((head a) : maior (tail a) b)
                | otherwise = maior (tail a) b