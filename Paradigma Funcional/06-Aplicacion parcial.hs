--Aplicacion total
sumar1 :: Num a => a -> a
sumar1 numero = numero + 1

--Aplicacion parcial
sumar1parcial :: Integer -> Integer
sumar1parcial = (1 +)

--Usar aplicacion parcial
cinco :: Integer
cinco = sumar1parcial 4

--Sin aplicacion
sumar :: Integer -> Integer -> Integer
sumar = (+)


--Ejemplos aplicacion parcial
max0 :: Integer -> Integer
max0 = max 0

maximoEntre5y0 :: Integer
maximoEntre5y0= max0 5

-- Un mensaje sale 3 pesos por cada caracter
precioDeMensaje :: String -> Int
precioDeMensaje = (*3) . length