calculaValor :: String -> Double -> Double
calculaValor valorVeiculo numPessoas
    | valorVeiculo == "carro" = 5.0 + (numPessoas * 1.5)
    | valorVeiculo == "moto" = 2.0 + (numPessoas * 1.5)
    | valorVeiculo == "van" = 15.0 + (numPessoas * 1.5)
    | valorVeiculo == "onibus" = 50.0 + (numPessoas * 1.5)
    | valorVeiculo == "bicicleta" = numPessoas * 1.5


main = do valorVeiculo <- getLine
          numPessoas <- readLn
          print (calculaValor valorVeiculo numPessoas)
