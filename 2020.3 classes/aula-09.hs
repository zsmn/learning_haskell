isCrescent :: (Int -> Int) -> Int -> Bool
isCrescent f n = aux f n (f 0) 1
    where 
        aux f n x i
            | (i > n) = True
            | (f i < x) = False
            | otherwise = aux f n (f i) (i+1)

mapping :: [Int] -> [Int]
mapping lista = map f lista
    where f x = x*x

folding :: [Int] -> Int
folding lista = foldl1 (+) (mapping lista)

filtering :: [Int] -> [Int]
filtering lista = filter (> 0) lista

--mapFold :: [Int] -> [Int]
--mapFold f [] = []
--mapFold f (a:as) = (foldr f s a) : mapFold f as
--filterFold
--to be continued

maiores :: [[Int]] -> [Int]
maiores [] = []
maiores (a:as) = (foldl1 max a) : maiores as

takeW :: (Char -> Bool) -> String -> String
takeW cmp [] = []
takeW cmp (a:as) 
    | (cmp a) = a : takeW cmp as
    | otherwise = []

takeWhil :: (Char -> Bool) -> [Char] -> ([Char], [Char])
takeWhil cmp str = take cmp str ([], [])
    where 
        take cmp [] (r1, r2) = (r1, r2)
        take cmp (a:as) (r1, r2) 
            | (cmp a) = take cmp as (r1 ++ [a], r2)
            | otherwise = (r1, as)

dropWhil :: (Int -> Bool) -> [Int] -> [Int]
dropWhil cmp [] = []
dropWhil cmp (a:as)
    | (cmp a) = dropWhil cmp as
    | otherwise = (a:as)



