{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

cabeza :: [a] -> a
cabeza (x : _) = x

cola :: [a] -> [a]
cola (_ : xs) = xs

listaVacia :: [a] -> Bool
listaVacia [] = True
listaVacia (_ : _) = False

tieneUnSoloElemento :: [a] -> Bool
tieneUnSoloElemento [_] = True
tieneUnSoloElemento _ = False

estaOrdenada :: Ord a => [a] -> Bool
estaOrdenada [] = True
estaOrdenada [_] = True
estaOrdenada (x : y : xs) = x <= y && estaOrdenada (y : xs)

longitud :: Num p => [a] -> p
longitud [] = 0
longitud (_ : xs) = 1 + longitud xs

sumatoria :: Num p => [p] -> p
sumatoria [] = 0
sumatoria (x : xs) = x + sumatoria xs

productoria :: Num p => [p] -> p
productoria [] = 1
productoria (x : xs) = x * productoria xs