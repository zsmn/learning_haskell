import Data.List

-- getters
getName (x, _, _) = x
getLife (_, y, _) = y
getPower (_, _, z) = z

getWin (x, _) = x
getRemainingLife (_, y) = y
--

-- utils
setarVida :: (String, Int, Int) -> Int -> (String, Int, Int)
setarVida at dec = (getName at, dec, getPower at)

-- dps do cara : (myLife / theirPower)
-- turnos q venci : (theirLife / myPower)
-- dano q tomei: (theirLife / myPower) * (myLife / theirPower)

fract :: Int -> Int -> Float
fract x y = (a / b)
  where a = fromIntegral x :: Float
        b = fromIntegral y :: Float

returnInt :: Float -> Int
returnInt x = a
  where a = round x

calcFloatDivision :: Int -> Int -> Int
calcFloatDivision a b = returnInt (fract a b)

ashVenceLuta :: (String, Int, Int) -> (String, Int, Int) -> (Bool, Int)
ashVenceLuta t1 t2 
    | getLife (t2) `div` getPower (t1) < getLife(t1) `div` getPower(t2)   = (True, (getLife t1) - (calcFloatDivision (getLife t1) ((getLife t1) `div` (getPower t2)) * (getLife t2) `div` ((getPower t1))))
    | otherwise                                                           = (False, (getLife t2) - (calcFloatDivision (getLife t2) ((getLife t2) `div` (getPower t1)) * (getLife t1) `div` ((getPower t2))))

batalha :: [(String, Int, Int)] -> [(String, Int, Int)] -> (String, [(String, Int, Int)])
batalha t1 t2 
    | t1 == [] && t2 == []                               = ("Gary", [])
    | t1 == []                                           = ("Gary", (head t2):[])
    | t2 == []                                           = ("Ash", (head t1):[])
    | getLife (head t1) <= 0                             = batalha (tail t1) t2 
    | getLife (head t2) <= 0                             = batalha t1 (tail t2)
    | getWin (ashVenceLuta (head t1) (head t2)) == True  = batalha ((setarVida (head t1) (getRemainingLife (ashVenceLuta (head t1) (head t2)))) : (tail t1)) (tail t2)
    | getWin (ashVenceLuta (head t1) (head t2)) == False = batalha (tail t1) ((setarVida (head t2) (getRemainingLife (ashVenceLuta (head t1) (head t2)))) : (tail t2))