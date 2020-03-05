vendas n = n

-- without list

getVendas :: Int -> Int -> Int
getVendas n s
    | n < 0  = 0
    | (vendas n) == s = 1 + (getVendas (n-1) s)
    | otherwise = getVendas (n-1) s

-- with list at the input

getVendasList :: [Int] -> Int -> Int
getVendasList n s
    | n == []                =  0
    | (head n) == s          =  1 + (getVendasList (tail n) s) 
    | otherwise              =  getVendasList (tail n) s
