import Data.List

qtEsp :: Int -> [Char]
qtEsp spaces
    | spaces == 0         = ""
    | otherwise           = " " ++ qtEsp (spaces - 1)

addEspOnStr :: [Char] -> Int -> [Char]
addEspOnStr str n
    | length str == 1     = ((head str) :[])
    | otherwise           = ((head str) :[]) ++ (qtEsp n) ++ addEspOnStr (tail str) (n)
