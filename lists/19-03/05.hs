import Data.List

isPalindromo :: [Char] -> Bool
isPalindromo str
    | str == []                                      = True
    | comparePalindrome str (reverse str) == True    = True
    | otherwise                                      = False

comparePalindrome :: [Char] -> [Char] -> Bool
comparePalindrome str reversestr
    | str == []                                              = True
    | head str == head reversestr                            = comparePalindrome (tail str) (tail reversestr)
    | otherwise                                              = False