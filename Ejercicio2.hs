calcularPotencias :: [Integer] -> Integer -> [Integer]
calcularPotencias numeros n = map (\numero -> numero ^ n) numeros

main :: IO ()
main = do
  let numeros = [1..10]
  putStrLn "Ingrese una potencia entera positiva:"
  entrada <- getLine
  case reads entrada :: [(Integer, String)] of
    [(n, "")] | n > 0 -> do
      putStrLn ("Lista original: " ++ show numeros)
      putStrLn ("Resultado: " ++ show (calcularPotencias numeros n))
    _ -> putStrLn "Debe ingresar un entero positivo."
