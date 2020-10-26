-- getters
geta (a,_,_) = a
getb (_,b,_) = b
getc (_,_,c) = c

triangulo :: (Int,Int,Int) -> (String,Int)
triangulo lados | (geta lados >= getb lados + getc lados) || (getb lados >= geta lados + getc lados) || (getc lados >= geta lados + getb lados) = ("Impossivel", 0)
                | (geta lados == getb lados) && (getb lados == getc lados) = ("Equilatero", geta lados + getb lados + getc lados)
                | (geta lados /= getb lados) && (getb lados /= getc lados) && (geta lados /= getc lados) = ("Escaleno", geta lados + getb lados + getc lados)
                | otherwise  = ("Isosceles", geta lados + getb lados + getc lados)
