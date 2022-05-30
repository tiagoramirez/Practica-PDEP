-- Constante
largoMaximoNombre :: Int
largoMaximoNombre = 7

cantidadLetrasNombreAceptable :: Int -> Bool
cantidadLetrasNombreAceptable cantidad = cantidad <= largoMaximoNombre

esNombreAceptable :: [Char] -> Bool
esNombreAceptable = cantidadLetrasNombreAceptable . length