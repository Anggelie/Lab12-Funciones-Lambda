import Data.List (sortOn)
import Data.Char (toLower)

data Telefono = Telefono
  { marca :: String
  , modelo :: Int
  , color :: String
  } deriving (Show)

ordenarTelefonos :: String -> [Telefono] -> [Telefono]
ordenarTelefonos clave telefonos =
  case map toLower clave of
    "make"  -> sortOn marca telefonos
    "model" -> sortOn modelo telefonos
    "color" -> sortOn color telefonos
    _       -> telefonos

main :: IO ()
main = do
  let telefonos =
        [ Telefono "Nokia" 216 "Black"
        , Telefono "Apple" 2 "Silver"
        , Telefono "Huawei" 50 "Gold"
        , Telefono "Samsung" 7 "Blue"
        ]
  putStrLn "Ingrese la clave para ordenar (make, model, color):"
  clave <- getLine
  if map toLower clave `elem` ["make", "model", "color"]
    then mapM_ print (ordenarTelefonos clave telefonos)
    else putStrLn "La clave indicada no es valida."
