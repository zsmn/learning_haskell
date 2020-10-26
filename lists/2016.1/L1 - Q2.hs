  
tupla :: Int -> (Int,Int,Int)
tupla numero = ((numero `div` 100) `mod` 10, (numero `div` 10) `mod` 10 ,numero `mod` 10)
