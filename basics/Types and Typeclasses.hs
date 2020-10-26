-- TYPES AND TYPECLASSES --

-- TYPECLASSES 101 --

ghci> :t (==)
(==) :: (Eq a) => a -> a -> Bool

-- Everything before the (=>) symbol is called a class constraint.
-- This declaration works like this: The equality function takes any two values
-- that are of the same type and returns a Bool.
-- The type of those two values must be a member of the Eq class (this was the class constraint)


-- The equality operator (==) is a function. So are the following operators: (+),(*)
-- (-),(/) and pretty much all operators.
-- If a function is comprised only of special characters, it is considered an infix
-- function by default.

-- The Eq typeclass provides an interface for testing for equality. Any type where it makes
-- sense to test for equality between two values of that type should be a member of the Eq class.

-- The `elem` function has a type of: (Eq a) => a -> [a] -> Bool, because it uses
-- (==) over a list to check whether some value we're looking for is in it.

-- (Eq) is used for types that support equality testing. The functions its members
-- implement are (==) and (/=) 

-- (Ord) is for types that have an ordering.
ghci> :t (>)  
(>) :: (Ord a) => a -> a -> Bool 

-- All the types we covered so far except for functions are part of Ord.
-- Ord covers all the standard comparing functions such as (>) (<) (>=) (<=)


---- IMPORTANTE IMPORTANTE IMPORTANTE IMPORTANTE IMPORTANTE ----
-- The (compare) function takes two Ord members of the same type and returns an ordering.
-- Ordering is a type that can be GT, LT or EQ, meaning : greater than, lesser than ou equal
-- respectively.
-- Remember that compare works like an infix function


-- FUNCTION (SHOW)
-- Members of Show can be presented as strings. All types covered so far except 
-- for functions are a part of Show. The most used function that deals with the 
-- Show typeclass is show. 
-- It takes a value whose type is a member of Show and presents it to us as a string.


-- FUNCTION (READ)
-- Read is sort of the opposite typeclass of Show. The read function takes a string and returns a type which is a member of Read.
-- Essa funcao (read) com numeros da bosta. Pq o Haskell nao sabe qual tipo eu quero que ele retorne
-- Pra isso eu tenho que indicar qual o tipo que eu quero como retorno. Como fazer isso?
-- Observe os exemplos a seguir:

read "4" :: Int 
read "4" :: Integer
read "4" :: Float 
read "4" :: Double

ghci> :t read  
read :: (Read a) => String -> a 

-- Na verdade ele sempre da merda nao so para numeros. A questao eh que ele nao da merda caso eu faca algo com o valor de retorno
-- Se eu n fizer nada com o valor de retorno, ele simplesmente nao vai saber qual eh o tipo que eu estou querendo como retorno e, consequentemente, vai dar erro.
-- Tem que indicar que tipo eu quero que o ghci retorne para mim!!!!
-- Como que eu indico isso??? Usando type annotations.
-- Type annotations are a way of explicitly saying what the type of an expression
-- should be. We do that by adding
-- :: at the end of the expression and then specifying a type.

read "True" :: Bool
(read "5" :: Float) * 4
read "[1,2,3,4,5]" :: [Int]
read "(3, 'a')" :: (Int, Char)
