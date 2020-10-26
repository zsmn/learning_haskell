  
type Pessoa     = String
type Livro      = String
type BancoDados = [(Pessoa,Livro)]

bb :: BancoDados
bb = [
     ("Zenio","Harry Potter"),
     ("Zilde","Almanaque do Tio Patinhas"),
     ("Riei","Senhor dos Aneis"),
     ("Riei", "Yu Yu Hakusho")
     ]

--Funcao que retorna quais livros uma certa pessoa alugou.
livros :: BancoDados -> Pessoa -> [Livro]
livros [] person = []
livros (x:xs) person | fst x == person = (snd x):livros (xs) person
                     | otherwise       = livros (xs) person

--Funcao que dado um livro, retorna uma lista com as pessoas que alugaram aquele livro.
emprestimos :: BancoDados -> Livro -> [Pessoa]
emprestimos [] book = []
emprestimos (x:xs) book | snd x == book = (fst x):emprestimos (xs) book
                        | otherwise     = emprestimos (xs) book

--Funcao que verifica se um livro foi emprestado. Ou seja, se ele ta presente no banco de dados.
emprestado :: BancoDados -> Livro -> Bool
emprestado [] book = False
emprestado (x:xs) book | snd x == book = True
                       | otherwise     = emprestado (xs) book

--Funcao que checa quantos livros uma certa pessoa ja alugou.
qtdEmprestimos :: BancoDados -> Pessoa -> Int
qtdEmprestimos [] person = 0
qtdEmprestimos (x:xs) person | fst x  == person = 1 + qtdEmprestimos (xs) person
                             | otherwise        = qtdEmprestimos (xs) person 

--Funcao que adiciona um novo emprestimo ao banco de dados de emprestimos
emprestar :: BancoDados -> Pessoa -> Livro -> BancoDados
emprestar bb person book = (person, book):bb

--Funcao para retirar um emprestimo do banco de dados de emprestimos
devolver :: BancoDados -> Pessoa -> Livro -> BancoDados
devolver [] person book = []
devolver (x:xs) person book | (fst x == person) && (snd x == book) = [] ++ devolver (xs) person book
                            | otherwise                            = [x] ++ devolver (xs) person book
