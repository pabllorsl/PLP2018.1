menor_elemento :: [Int] -> Int
menor_elemento []       = 0
menor_elemento [x]      = x
menor_elemento (x:xs)   = minimo x (menor_elemento xs)

minimo :: Int -> Int -> Int
minimo a b
    | a > b  = b
    | a < b  = a
    | a == b = a

main = do
    lista <- getLine
    print(menor_elemento(read(lista)))
