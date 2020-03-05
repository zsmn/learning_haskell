vendas n = n

getVendas :: Int -> Int -> Int
getVendas n s
    | n == 0  = 0
    | (vendas n) == s = 1 + (getVendas (n-1) s)
    | otherwise = getVendas (n-1) s
