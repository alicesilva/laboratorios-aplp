divisores :: Int -> [Int]
divisores numero = [ x | x <- [1..metade], (mod numero x) == 0] 
    where metade = floor(fromIntegral(numero) / 2)
    
ehPerfeito :: Int -> Bool
ehPerfeito numero
    | numero == (sum(divisores numero)) = True
    | otherwise = False


main = do
    valor <- readLn
    putStrLn (show (ehPerfeito valor))

