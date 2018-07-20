somaDosQuadrados :: Int -> Int
somaDosQuadrados n = ssq n - ssq (1 - 1)
  where
    ssq x = div (((2 * x + 3) * x + 1) * x) 6

quadradoDaSoma :: Int -> Int
quadradoDaSoma n = sum[1..n] * sum[1..n]

difQuadSomaSomaQuad :: Int -> Int
difQuadSomaSomaQuad n = quadradoDaSoma n - somaDosQuadrados n

main :: IO()
main = do
    n <- getLine
    print(difQuadSomaSomaQuad (read n))
