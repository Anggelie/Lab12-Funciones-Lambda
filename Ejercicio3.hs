import Data.List (transpose)

transponerMatriz :: [[Int]] -> [[Int]]
transponerMatriz [] = []
transponerMatriz matriz
  | all (\fila -> length fila == length (head matriz)) matriz = transpose matriz
  | otherwise = error "Las filas deben tener la misma longitud."

main :: IO ()
main = do
  let matriz = [[1, 2, 3], [4, 5, 6]]
  putStrLn "Matriz original:"
  mapM_ print matriz
  putStrLn "Matriz transpuesta:"
  mapM_ print (transponerMatriz matriz)
