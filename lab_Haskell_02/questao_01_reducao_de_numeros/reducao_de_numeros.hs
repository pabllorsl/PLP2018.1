somarAlgarismos :: Int -> Int
somarAlgarismos n = if n < 10 then n else (n `mod` 10) + somarAlgarismos (n `div` 10)

verificar :: Int -> Int
verificar x
    | x < 10 = x
    | otherwise = verificar(somarAlgarismos x)

comparar :: Int -> Int -> Int
comparar x y
    | x > y = 1
    | x < y = 2
    | otherwise = 0

main = do
    a <- getLine
    b <- getLine
    print(comparar(verificar(read a)) (verificar(read b)))
