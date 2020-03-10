import Data.List

getFirst  (a, _) = a
getSecond (_, b) = b

getTranslateInTouples :: Char -> [(Char, Char)] -> Char
getTranslateInTouples charCmp touples
    | touples == []                             = ' '
    | charCmp == getFirst (head touples)        = getSecond (head touples)
    | otherwise                                 = getTranslateInTouples charCmp (tail touples)

decEnigma :: String -> [(Char, Char)] -> String
decEnigma str touples
    | str == []                      = ""
    | otherwise                      = ((getTranslateInTouples (head str) touples) :[]) ++ (decEnigma (tail str) touples)