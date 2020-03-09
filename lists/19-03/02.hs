import Data.List

getNumOccurs :: Int -> Int -> Int
getNumOccurs num numToCheck
    | num >= 10                        = getNumOccurs (num `mod` 10) (numToCheck) + getNumOccurs (num `div` 10) (numToCheck)
    | num < 10 && num == numToCheck    = 1
    | otherwise                        = 0

quantidade :: Int -> Int -> Int
quantidade num numToCheck
    | num == -1       = 0
    | otherwise       = getNumOccurs (num) (numToCheck) + quantidade (num - 1) (numToCheck)