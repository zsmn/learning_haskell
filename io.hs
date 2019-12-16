-- Input and output programs

import Data.List

main = do
    putStrLn "What's your name"
    name <- getLine
    putStrLn ("Hello " ++ name)
    putStrLn "Your age?"
    age <- getLine
    putStrLn ("Your age is " ++ age)