bissexto :: Int -> Bool
bissexto ano | (ano `mod` 4 == 0) && (ano `mod` 100 /= 0) = True
             | (ano `mod` 400 == 0)                       = True
             | otherwise                                  = False
