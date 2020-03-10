-- fat
fat :: Int -> Int
fat n
    | n < 0              = -1
    | n == 0             = 1
    | otherwise          = n * fat (n - 1)

-- check if 4 numbers are equal
all4Equal :: Int -> Int -> Int -> Int -> Bool
all4Equal n1 n2 n3 n4
    | n1 == n2 && n2 == n3 && n3 == n4        = True
    | otherwise                               = False

-- check qt of equal nums
equalCount :: Int -> Int -> Int -> Int
equalCount n1 n2 n3
    | n1 == n2 && n2 == n3                     = 3
    | n1 == n2 || n2 == n3 || n1 == n3         = 2
    | otherwise                                = 0

-- primos entre si
getDivs :: Int -> Int -> [Int]
getDivs num it
    | it == (num + 1)               = []
    | mod num it == 0               = it : getDivs num (it+1)
    | otherwise                     = getDivs num (it+1)

cmpDivs :: Int -> [Int] -> Int
cmpDivs num listDiv
    | listDiv == []                = 0
    | mod num (head listDiv) == 0  = 1 + cmpDivs num (tail listDiv)
    | otherwise                    = cmpDivs num (tail listDiv)

primosEntreSi :: Int -> Int -> Bool
primosEntreSi a b
    | cmpDivs (max a b) (getDivs (min a b) 1) == 1         = True
    | otherwise                                            = False

---------- listas ----------

double :: [Int] -> [Int]
double []     = []
double (x:xs) = x*2 : double xs

member :: [Int] -> Int -> Bool
member [] a     = False
member (x:xs) a = if(x == a) then True else member xs a

digits :: String -> String
digits []     = []
digits (x:xs) = if(x >= '0' && x <= '9') then x : digits xs else digits xs

sumPairs :: [Int] -> [Int] -> [Int]
sumPairs [] []         = []
sumPairs [] (x:xs)     = x : xs
sumPairs (x:xs) []     = x : xs
sumPairs (x:xs) (y:ys) = (x+y) : sumPairs xs ys