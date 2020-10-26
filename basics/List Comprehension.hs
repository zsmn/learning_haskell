-- Reminder: Remember that strings are just lists of chars.
-- This means that we can use list comprehensions to process and produce strings.
removermaiuscula :: [Char] -> [Char]
removermaiuscula st = [x | x <- st, not(x `elem` ['A'..'Z'])]

-- funcao para checar se um elemento ta dentro de uma list
-- No caso, a gente usa a funcao infixa `elem` que retorna True ou False.
-- Exemplo 1:
-- 1 `elem` [2,3,46,1] -> retorna True
-- Exemplo 2:
-- 'c' `elem` ['a','e','i','o','u'] -> retorna False

-- We can also work with lists of lists using comprehension
xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
novoxxs = [ [x | x <- xs, even x] | xs <- xxs]
