del1AlInfinito :: [Integer]
del1AlInfinito = [1 ..]

del1Al20 :: [Integer]
del1Al20 = [1 .. 20]

muchos :: t -> [t]
muchos n = n : muchos n

misPares :: Integral a => [a] -> [a]
misPares lista = [ x * 4 | x <- lista, even x, x > 18 || x < 5]

misPares' :: Integral b => [b] -> [b]
misPares' = map (*4) . filter (\x -> even x && (x > 18 || x<5))