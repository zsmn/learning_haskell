agrupar :: Eq t => [[t]] -> [(t, Int)]
agrupar lista = agrupar' lista []
    where
        agrupar' [] res = res
        agrupar' (x:xs) res = agrupar' xs (check x res)
            where
                check [] resu = resu
                check (y:ys) resu = check ys (check' y resu)
                    where
                        check' z [] = [(z, 1)]
                        check' z ((a1, a2):as) 
                            | (a1 == z) = (a1, a2+1) : as
                            | otherwise = (a1, a2) : check' z as


            
