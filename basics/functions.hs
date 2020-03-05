-- functions

import Data.List
import System.IO

-- add func
add :: Int -> Int -> Int
add x y = x + y

-- fact recursive
fact :: Int -> Int
fact 0 = 1
fact n = n * fact(n - 1)

-- polynomial roots
roots :: (Float, Float, Float) -> (Float, Float)  
roots (a,b,c) = (x1, x2) where 
   x1 = e + sqrt d / (2 * a) 
   x2 = e - sqrt d / (2 * a) 
   d = b * b - 4 * a * c  
   e = - b / (2 * a)  

main = do
    putStrLn "The sum of 2 and 5 is: "
    print(add 2 5)
    putStrLn "The factorial of 5 is: "
    print(fact 5)
    putStrLn "The roots of our Polynomial equation are:" 
    print (roots(1,-8,6))