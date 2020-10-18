shorten :: String -> String
shorten str = "http://youtu.be/" ++ (takeE (dropEqual str))

takeE :: String -> String
takeE [] = []
takeE (a:as)
    | (a == '&') = []
    | otherwise = a : takeE as

dropEqual :: String -> String
dropEqual [] = []
dropEqual (a:as)
    | (a == '=') = as
    | otherwise = dropEqual as


main :: IO ()
main = do
    arquivo <- readFile "url.in" 
    loop arquivo

loop :: String -> IO ()
loop [] = return ()
loop str = do
    putStrLn (shorten r1)
    loop r2
        where
            (r1, r2) = takeW str ([], [])

takeW :: String -> (String, String) -> (String, String)
takeW [] result = result
takeW (a:as) (r1, r2)
    | (a == '\n') = (r1, as)
    | otherwise = takeW as (r1++[a], r2)
