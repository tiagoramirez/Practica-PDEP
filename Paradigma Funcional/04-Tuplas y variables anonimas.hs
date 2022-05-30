fechaNacimiento :: (Integer, Integer, Integer)
fechaNacimiento = (04, 09, 2001)

saberPrimeroTupla :: (b, b) -> b
saberPrimeroTupla = fst

saberSegundoTupla :: (a, b) -> b
saberSegundoTupla = snd

tiago :: ([Char], Integer, Integer, Integer, [Char])
tiago = ("Tiago Ramirez", 04, 09, 2001, "UTN")

-- Funciones para recuperar los datos de tiago
nombrePersona :: (a, b, c, d, e) -> a
nombrePersona (nombre, _, _, _, _) = nombre

diaNacimiento :: (a, b, c, d, e) -> b
diaNacimiento (_, dia, _, _, _) = dia

mesNacimiento :: (a, b, c, d, e) -> c
mesNacimiento (_, _, mes, _, _) = mes

anioNacimiento :: (a, b, c, d, e) -> d
anioNacimiento (_, _, _, anio, _) = anio

universidadPersona :: (a, b, c, d, e) -> e
universidadPersona (_, _, _, _, universidad) = universidad