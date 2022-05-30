type FechaNacimiento = (Integer, Integer, Integer)

type Persona = (String, FechaNacimiento, String)

tiago :: Persona
tiago = ("Tiago Ramirez", (04, 09, 2001), "UTN")

-- Funciones para recuperar los datos de un type Persona
nombrePersona :: Persona -> String
nombrePersona (nombre, _, _) = nombre

fechaNacimiento :: Persona -> FechaNacimiento
fechaNacimiento (_, fecha, _) = fecha

universidadPersona :: Persona -> String
universidadPersona (_, _, universidad) = universidad

-- Funciones para recuperar los datos de un type FechaNacimiento
diaNacimiento :: FechaNacimiento -> Integer
diaNacimiento (dia, _, _) = dia

mesNacimiento :: FechaNacimiento -> Integer
mesNacimiento (_, mes, _) = mes

anioNacimiento :: FechaNacimiento -> Integer
anioNacimiento (_, _, anio) = anio

--Ejercicio
anioPersona :: Persona -> Integer
anioPersona = anioNacimiento . fechaNacimiento