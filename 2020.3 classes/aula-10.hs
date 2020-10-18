--processamento de String

separadores = "!@#$%¨&**(){}[],.;:?/|'\"` "

ehSeparador :: Char -> Bool
ehSeparador c = (length (filter (==c) separadores) > 0)

naoEhSeparador :: Char -> Bool
naoEhSeparador c = (length (filter (==c) separadores) == 0)

takeW :: (Char -> Bool) -> String -> String
takeW cmp [] = []
takeW cmp (a:as)
    | (cmp a) = a : (takeW cmp as)
    | otherwise = []

dropW :: (Char -> Bool) -> String -> String
dropW cmp [] = []
dropW cmp (a:as)
    | (cmp a) = (a:as)
    | otherwise = dropW cmp as

getWord :: String -> String
getWord str = takeW (naoEhSeparador) str

dropSpace :: String -> String
dropSpace str = dropW (naoEhSeparador) str

dropWord :: String -> String
dropWord str = dropW ehSeparador str

splitWords :: String -> [String]
splitWords [] = []
splitWords str = getWord texto : splitWords (dropSpace (dropWord texto))
    where texto = dropSpace str

