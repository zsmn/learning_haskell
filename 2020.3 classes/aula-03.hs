import Data.Char

addEspacos n | (n < 1) = ""
             | otherwise = " " ++ addEspacos (n-1)

paraDireita :: Int -> String -> String
paraDireita n str = addEspacos n ++ str

vendas = [12, 14, 15, 19, 22, 15, 19]

cabecalho = "Semana  Venda\n"

imprimeSemanas n = imp' n 0
    where 
        imp' n i
            | (i > n) = ""
            | otherwise = (paraDireita 2 (show i)) ++ (paraDireita 6 (show (vendas !! i))) ++ "\n" ++ imp' n (i+1)

total n = tot' n 0
    where
        tot' n i
            | (i > n) = 0
            | otherwise = (vendas !! i) + (tot' n (i+1))

imprimeTotal n = "Total" ++ (addEspacos 4) ++ (show (total n)) ++ "\n"

media n = x / y 
    where 
        x = fromIntegral (total n) :: Float
        y = fromIntegral (n+1) :: Float

imprimeMedia n = "Media" ++ (addEspacos 4) ++ (show (media n)) ++ "\n"

imprimeTabela n = putStr (cabecalho ++ imprimeSemanas n ++ imprimeTotal n ++ imprimeMedia n)

oi = "eae\n"








