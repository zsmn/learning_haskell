import Data.List

metade :: [Int] -> ([Int], [Int])
metade list
    | list == []                = ([], [])
    | length list `mod` 2 == 0  = (take (length list `div` 2) list, take (length list `div` 2) (drop (length list `div` 2) list))
    | otherwise                 = (take (length list `div` 2) list, take ((length list `div` 2) + 1) (drop (length list `div` 2) list))

    
