decimalBinario:: Int -> String
decimalBinario 0 = ""
decimalBinario n =
    if n `mod` 2 == 1 then decimalBinario next++"1"
    else decimalBinario next++"0"
    where next = (div n 2)

main :: IO()
main = do
    x <- getLine
    putStrLn(decimalBinario(read x))
