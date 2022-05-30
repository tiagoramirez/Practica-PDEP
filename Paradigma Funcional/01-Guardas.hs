-- Funciona como un IF:
saberNota :: (Ord a, Num a) => a -> String
saberNota nota
    | nota > 10 = "Excelente"
    | nota > 8 = "Muy bien"
    | nota > 6 = "Bien"
    | nota > 4 = "Regular"
    | otherwise = "Insuficiente"
-- otherwise vale siempre true