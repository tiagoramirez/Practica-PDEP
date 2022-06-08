-- foldl1: usa como caso base el ultimo elemento de la lista
mostrarNombresDeIzquierdaAderecha :: [String] -> String
mostrarNombresDeIzquierdaAderecha = foldl1 (++)

mostrarNombresDeIzquierdaAderecha' :: [String] -> String
mostrarNombresDeIzquierdaAderecha' = foldl1 (\acumulado nombre -> acumulado ++ ", " ++ nombre)

-- foldr1: usa como caso base el primer elemento de la lista
mostrarNombresDeIzquierdaAderecha'' :: [String] -> String
mostrarNombresDeIzquierdaAderecha'' = foldr1 (++)

mostrarNombresDeIzquierdaAderecha''' :: [String] -> String
mostrarNombresDeIzquierdaAderecha''' = foldr1 (\nombre acumulado -> nombre ++ ", " ++ acumulado)

-- foldl: el caso base se le especifica en la funcion y va de izquierda a derecha
suma :: [Integer] -> Integer
suma = foldl (+) 0

multiplicacion :: [Integer] -> Integer
multiplicacion = foldl (*) 1

-- foldr: el caso base se le especifica en la funcion y va de derecha a izquierda
suma' :: [Integer] -> Integer
suma' = foldr (+) 0

multiplicacion' :: [Integer] -> Integer
multiplicacion' = foldr (*) 1

-- Ejemplos para usar
listaDeNombres :: [[Char]]
listaDeNombres = ["Tiago", "Pedro", "Raul"]

listaDeNumeros :: [Integer]
listaDeNumeros = [4, -5, 6, -7, 1, 46]