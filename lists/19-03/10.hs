import Data.List


getSeparatedStr :: String -> String
getSeparatedStr str
    | head str == ';' || head str == ' ' || str == []            = ""          
    | otherwise                                                  = ((head str) :[]) ++ getSeparatedStr (tail str)

getEliminatedStr :: String -> Int -> String
getEliminatedStr str marker
    | marker == 1                                                = str
    | head str == ';' || head str == ' ' || str == []            = getEliminatedStr (tail str) 1       
    | otherwise                                                  = getEliminatedStr (tail str) marker

getTranslateStr :: String -> Bool
getTranslateStr str
    | str == "Aprovada"                                          = True
    | otherwise                                                  = False

clearData :: String -> [(Int, String, String, Double, Bool)]
clearData str 
    | str == []     = []
    | otherwise     = [((map read [getSeparatedStr str] :: [Int]) !! 0, getSeparatedStr (getEliminatedStr str 0), getSeparatedStr (getEliminatedStr (getEliminatedStr str 0) 0), (map read [getSeparatedStr (getEliminatedStr (getEliminatedStr (getEliminatedStr str 0) 0) 0)] :: [Double]) !! 0, getTranslateStr (getSeparatedStr (getEliminatedStr (getEliminatedStr (getEliminatedStr (getEliminatedStr str 0) 0) 0) 0)))] ++ clearData (getEliminatedStr (getEliminatedStr (getEliminatedStr (getEliminatedStr (getEliminatedStr str 0) 0) 0) 0) 0)