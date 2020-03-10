import Data.List
import Data.Char

isPalindromo :: [Char] -> Bool
isPalindromo str
    | str == []                                      = True
    | comparePalindrome str (reverse str) == True    = True
    | otherwise                                      = False

comparePalindrome :: [Char] -> [Char] -> Bool
comparePalindrome str reversestr
    | str == []                                              = True
    | toLower (head str) == toLower (head reversestr)        = comparePalindrome (tail str) (tail reversestr)
    | otherwise                                              = False