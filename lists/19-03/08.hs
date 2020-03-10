import Data.List

testeOccur :: String -> Int -> Char -> Bool
testeOccur str qt charCmp
    | qt == 0                   = True
    | head str == charCmp       = testeOccur (tail str) (qt-1) charCmp
    | otherwise                 = False