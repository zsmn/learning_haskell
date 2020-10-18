--processamento de String - recursão de causa

separadores = "!@#$%¨&**(){}[],.;:?/|'\"` "

ehSeparador :: Char -> Bool
ehSeparador c = (length (filter (==c) separadores) > 0)

naoEhSeparador :: Char -> Bool
naoEhSeparador c = (length (filter (==c) separadores) == 0)

takeW :: (Char -> Bool) -> String -> String
takeW cmp str = takew cmp str []
takew cmp [] result = result
takew cmp (a:as) result
    | (cmp a) = takew cmp as (result ++ [a])
    | otherwise = result

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
splitWords str = splitW str []

splitW :: String -> [String] -> [String]
splitW [] result = result
splitW str result = splitW (dropSpace (dropWord texto)) (result ++ [getWord texto])
    where texto = dropSpace str

