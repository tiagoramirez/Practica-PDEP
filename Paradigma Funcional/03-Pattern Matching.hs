saberNota :: Num a => [Char] -> [a]
saberNota "Excelente" = [10]
saberNota "Muy bueno" = [8, 9]
saberNota "Bueno" = [6, 7]
saberNota "Regular" = [4, 5]
saberNota "Insuficiente" = [0, 1, 2, 3]
saberNota _ = []