eliminarElementos :: Eq a => [a] -> [a] -> [a]
eliminarElementos lista borrar =
  filter (\elemento -> elemento `notElem` borrar) lista

main :: IO ()
main = do
  let colores = ["rojo", "verde", "azul", "amarillo", "gris", "blanco", "negro"]
      borrar = ["amarillo", "cafe", "blanco"]
  putStrLn ("Lista original: " ++ show colores)
  putStrLn ("Elementos a borrar: " ++ show borrar)
  putStrLn ("Resultado: " ++ show (eliminarElementos colores borrar))
