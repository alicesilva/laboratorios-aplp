divisores :: Int -> [Int]
divisores num = [ x | x <- [1..metade], (mod num x) == 0] 
    where metade = floor(fromIntegral(num) / 2)

ehPrimo :: Int -> Bool
ehPrimo num = (divisores num) == [1]

ehPrimoCasado :: Int -> String
ehPrimoCasado numero
    | (ehPrimo numero) && (ehPrimo $ numero+2) = "PRIMO CASADO!"
    | ehPrimo numero = "PRIMO!"
    | otherwise = "NAO PRIMO!"


main = do
       valor <- readLn
       print (ehPrimoCasado valor)

