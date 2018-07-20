frequencia_de_numeros :: [Int] -> [Int] -> [Int]
frequencia_de_numeros [] lista = []
frequencia_de_numeros(x:xs) lista = [contarFrequencia x lista]++ frequencia_de_numeros xs lista

contarFrequencia :: Int -> [Int] -> Int
contarFrequencia e [] = 0
contarFrequencia e (x:xs) = if e == x then 1 + contarFrequencia e xs else contarFrequencia e xs

main = do
    lista <- getLine
    print(frequencia_de_numeros(read lista) (read lista))
