import Data.List

-- quicksort
quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (x:xs) = quicksort (filter (< x) xs) ++ [x] ++ quicksort (filter (>= x) xs)

-- fib
fib :: Int -> Int
fib a
    | a == 1             = 1
    | a == 2             = 1
    | otherwise          = fib (a - 1) + fib (a - 2)

getEvenFibAux :: Int -> Int -> [Int]
getEvenFibAux n a
    | n == 0                                = []
    | (fib a) `mod` 2 == 0                  = (fib a) : getEvenFibAux (n - 1) (a + 1)
    | otherwise                             = getEvenFibAux (n) (a + 1)

getEvenFib :: Int -> [Int]
getEvenFib n = getEvenFibAux n 1

-- calc bhaskara
bhaskara :: (Float, Float, Float) -> [Float]
bhaskara (a, b, c)
    | b^2 > (4.0 * a * c)              = ((-b + sqrt((b^2) - (4 * a * c))) / (2*a)) : ((-b - sqrt((b^2) - (4 * a * c))) / (2*a)) : []
    | b^2 == (4.0 * a * c)             = ((-b + sqrt((b^2) - (4 * a * c))) / (2*a)) : []
    | b^2 < (4.0 * a * c)              = []



---------------------- tuples

-- verificar se um membro esta na lista
listaMembros :: [Int]
listaMembros = [1, 2, 3, 4, 5, 6, 7]

membro :: [Int] -> Int -> Bool
membro list id = length [a | a <- list, a == id] > 0

-- verificar se um membro esta na lista

-- banco de dados
type Pessoa = String
type Livro = String
type BancoDados = [(Pessoa, Livro)]

baseExemplo :: BancoDados  
baseExemplo = 
    [("Zilde", "As branquinhas"),
     ("Zilde", "Kamasutra"),
     ("Suruba", "Kamasutra"),
     ("Pnc",  "Programando a morena"),
     ("Riei", "Eu Robo"),
     ("Ximenes", "50 tipos de gados")]

livros :: BancoDados -> Pessoa -> [Livro]
livros bdd person = [y | (x, y) <- bdd, x == person] 

emprestimos :: BancoDados -> Livro -> [Pessoa]
emprestimos bdd book = [x | (x, y) <- bdd, y == book]

emprestado :: BancoDados -> Livro -> Bool
emprestado bdd book = length [x | (x, y) <- bdd, y == book] > 0

qtdEmprestimos :: BancoDados -> Pessoa -> Int
qtdEmprestimos bdd person = length [x | (x, y) <- bdd, x == person]

devolver :: BancoDados -> Pessoa -> Livro -> BancoDados
devolver bdd person book = [(x, y) | (x, y) <- bdd, not (x == person && y == book)]
