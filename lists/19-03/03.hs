import Data.List

limpaUmUni :: Int -> Int -> Int
limpaUmUni numero it
    | numero == 0                      = 0
    | (numero `mod` 10) == 1           = limpaUmUni (numero `div` 10) (it)
    | otherwise                        = ((numero `mod` 10) * it) + limpaUmUni (numero `div` 10) (it * 10)

limpaUm :: [Int] -> [Int]
limpaUm listNum
    | listNum == []                      = []
    | limpaUmUni (head listNum) 1 == 0   = [] ++ limpaUm (tail listNum)
    | otherwise                          = (limpaUmUni (head listNum) (1) :[]) ++ limpaUm (tail listNum)