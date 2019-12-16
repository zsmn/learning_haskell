-- Comments
{-
    Testing multiline
    Comments
-}

import Data.List

-- Int
testInt = 15565

-- Double
testDouble = 3.99999999

-- Declaring variable types
alwaysInt :: Int
--alwaysInt = 45.23 fails
alwaysInt = 45

-- functions
{- It sums all the nums at the interval -}
sumOfNums = sum [ 1..1000 ]

{- Algebric examples -}
addEx  = 5 + 4
subEx  = 5 - 4
multEx = 5 * 4
divEx  = 5 / 4
modEx  = mod 5 4

{- Sqrt example -}
-- it receives a float number, so we need to convert it
sqrtOf = sqrt (fromIntegral addEx) -- calc sqrt of 9

{- Built in math functions -}
piVal = pi -- pi
ePow9 = exp 9 -- e^9
logOf9 = log 9 -- log(9)
squared9 = 9 ** 2 -- 9^2
truncateVal = truncate 9.999 -- remove float part
roundVal = round 9.3 -- round to most close value
ceilingVal = ceiling 9.999 -- ceil value (most higher close)
floorVal = floor 9.999 -- floor value (most lower close)

{- it also contains sin, cos, tan, asin, atan, acos, sinh,
   tanh, cosh, asingh, atanh, acosh  -}

{- Logical operators -}
trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True)

{- Lists -}
primeNumbers = [3, 5, 7, 11] -- declare list
morePrime = primeNumbers ++ [13, 17, 19, 23, 29] -- receive and put new numbers in a list
favNums = 2 : 7 : 21 : 66 :[] -- create a list with the numbers
multList = [[3, 5, 7], [11, 13, 17]] -- multi list
evenList = [2, 4..20] -- create a list of even numbers (2 after 2)
zeroToTen = [0..10] -- create a list 0 to 10
letterList = ['A'..'Z'] -- alphabet list
infinPow10 = [10, 20..] -- creates a infinite list [10, 20, 30...]
many2s = take 10 (repeat 2) -- create a list with 10 2's
many3s = replicate 10 3 -- create a list with 10 3's
cycleList = take 10 (cycle [1, 2, 3, 4, 5]) -- put elements in the cicle in the list
listTimes3 = [x * 3 | x <- [1..10], x * 3 <= 50] -- create a list like [3, 6, ...]
                                    -- condition!
divisBy9N13 = [x | x <- [0..500], x `mod` 13 == 0, x `mod` 9 == 0] -- put in the list elements only divisible by 9 and 13
sortedList = sort [14, 2, 3, 0, -4, 1] -- sort the list
sumOfLists = zipWith (+) [1, 2, 3, 4, 5] [6, 7, 8, 9, 10] -- sum the lists
listBiggerThen5 = filter (> 5) morePrimes2 -- returns the list with elements that obbey the condition

-- operations
revPrime = reverse morePrimes2 -- receives and reverse the list
lenPrime = length morePrimes2 -- return the size of elements in the list
first3Primes = take 3 morePrimes2 -- returns the first 3 elements in the list
removedPrimes = drop 3 morePrimes2 -- removes the first 3 elements in the list
morePrimes2 = 2 : morePrime -- add 2 into the beggining of the list
maxPrime = maximum morePrimes2 -- returns maximum value in the list
minPrime = minimum morePrimes2 -- returns minimum value in the list
prodPrimes = product morePrimes2 -- returns the product of all elements

-- checks
isListEmpty = null morePrimes2 -- checks if a list is empty
is7InList = 7 `elem` morePrimes2

-- indexing
secondPrime = morePrimes2 !! 1 -- returns the element in the list with index 1
firstPrime = head morePrimes2 -- returns the first element
lastPrime = last morePrimes2 -- returns the last element

