import Data.List

quicksort [] = []
quicksort (x:xs) = (quicksort lesser) ++ [x] ++ (quicksort greater)
    where
        lesser = filter  (< x)  xs
        greater = filter (>= x) xs


teste = quicksort [3, 1, 0, -4, 5]
