data Shape = Circle Float | Rectangle Float Float
isRound :: Shape -> Bool
isRound (Circle _) = True
isRound (Rectangle _ _) = False

area :: Shape -> Float
area (Circle r) = r*r*3.14
area (Rectangle b h) = b*h

data Expr = Lit Int |
            Add Expr Expr |
            Sub Expr Expr
            deriving (Eq, Show)

eval :: Expr -> Int
eval (Lit n) = n
eval (Add e1 e2) = (eval e1) + (eval e2)
eval (Sub e1 e2) = (eval e1) - (eval e2)

data Pairs t = Pair t t deriving (Eq, Show)
data List t = Nil | Cost t (List t) deriving (Eq, Show)
data Tree t = NilT | Node t (Tree t) (Tree t) deriving (Eq, Show)

showExpr :: Expr -> String
showExpr e = show e

toList :: List t -> [t]
toList (Nil) = []
toList (Cost x xs) = x : toList xs

fromList :: [t] -> List t
fromList [] = Nil
fromList (x:xs) = Cost x (fromList xs)

depth :: Tree t -> Int
depth (NilT) = 0
depth (Node a as1 as2) = 1 + max (depth as1) (depth as2)

collapse :: Tree t -> [t]
collapse (NilT) = []
collapse (Node a as1 as2) = [a] ++ collapse as1 ++ collapse as2

mapTree :: (t->u) -> Tree t -> Tree u
mapTree f (NilT) = NilT
mapTree f (Node a as1 as2) = (Node (f a) (mapTree f as1) (mapTree f as2))
