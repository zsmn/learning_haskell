import Data.List

btoi :: String -> Int
btoi str
    | str == []                 = 0
    | head str == '1'           = 2^(length (str) - 1) + btoi (tail str)
    | otherwise                 = btoi (tail str)