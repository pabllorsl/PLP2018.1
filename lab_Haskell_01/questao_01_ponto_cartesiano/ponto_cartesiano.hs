quadrante :: Int -> Int -> String
quadrante x y
    | x == 0 && y == 0 = "origem"
    | x == 0 = "eixo y"
    | y == 0 = "eixo x"
    | x > 0 && y > 0 = "primeiro quadrante"
    | x < 0 && y > 0 = "segundo quadrante"
    | x < 0 && y < 0 = "terceiro quadrante"
    | x > 0 && y < 0 = "quarto quadrante"

main :: IO()
main = do
    x <- getLine
    y <- getLine
    putStrLn(quadrante (read x) (read y))
