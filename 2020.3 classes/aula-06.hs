mini :: Int -> Int -> Int
mini a b 
    | a <= b = a
    | otherwise = b

maxi :: Int -> Int -> Int
maxi a b 
    | a >= b = a
    | otherwise = b

menorMaior :: Int -> Int -> Int -> (Int, Int)
menorMaior a b c = (mini (mini a b) c, maxi (maxi a b) c)

ordenaTripla :: Int -> Int -> Int -> (Int, Int, Int)
ordenaTripla a b c = (menor, mid, maior)
    where
        menor = mini (mini a b) c
        maior = maxi (maxi a b) c
        mid = a + b + c - menor - maior

type Ponto = (Float, Float)
type Reta = (Ponto, Ponto)

firstCoord :: Ponto -> Float
firstCoord x = fst x

secCoord :: Ponto -> Float
secCoord x = snd x

vert :: Reta -> Bool
vert r = (x1 == x2)
    where ((x1, y1), (x2, y2)) = r

pontoY :: Float -> Reta -> Float
-- (x - x1)(y2 - y1) = (y-y1)(x2 - x1)
pontoY x r = ((x - x1)*(y2 - y1))/(x2 - x1) + y1
    where ((x1, y1), (x2, y2)) = r
