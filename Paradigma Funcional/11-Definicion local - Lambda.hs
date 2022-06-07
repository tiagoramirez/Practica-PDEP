import qualified Data.Char as Char

nombresPersonas :: [String]
nombresPersonas = ["tiAgo", "joSE", "mAnuEL", "roDRIgo"]

capitalizePersonas :: [String] -> [String]
capitalizePersonas = map (\(x : xs) -> Char.toUpper x : map Char.toLower xs)