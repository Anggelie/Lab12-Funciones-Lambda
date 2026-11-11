transponerMatriz :: [[Int]] -> [[Int]]
transponerMatriz [] = []
transponerMatriz matriz
  | all (\fila -> length fila == columnas) matriz =
      map (\columna -> map (\fila -> fila !! columna) matriz) [0 .. columnas - 1]
  | otherwise = error "Las filas deben tener la misma longitud."
  where
    columnas = length (head matriz)

main :: IO ()
main = do
  let matriz = [[1, 2, 3], [4, 5, 6]]
  putStrLn "Matriz original:"
  mapM_ print matriz
  putStrLn "Matriz transpuesta:"
  mapM_ print (transponerMatriz matriz)
