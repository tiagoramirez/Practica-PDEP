type Persona = (String, Integer)

edadPersona :: (a, b) -> b
edadPersona (_, edad) = edad

persona1 :: Persona
persona1 = ("Tiago", 20)

persona2 :: Persona
persona2 = ("Roman", 24)

persona3 :: Persona
persona3 = ("Pedro", 10)

persona4 :: Persona
persona4 = ("Jose", 30)

persona5 :: Persona
persona5 = ("Pepe", 22)

personas :: [Persona]
personas =
  [ persona1,
    persona2,
    persona3,
    persona4,
    persona5
  ]

--map
edadesPersonas :: [Integer]
edadesPersonas = map edadPersona personas

--filter
personasMayoresA23 :: [(String, Integer)]
personasMayoresA23 = filter ((> 23) . edadPersona) personas

--sum
totalEdadesPersonas :: Integer
totalEdadesPersonas = sum edadesPersonas

--length
cantidadPersonas :: Int
cantidadPersonas = length personas

--elem
existePersona :: Persona -> Bool
existePersona persona = elem persona personas

--any
existeAlgunoMayor29 :: Bool
existeAlgunoMayor29 = any ((> 29) . edadPersona) personas

existeAlgunoMenor10 :: Bool
existeAlgunoMenor10 = any ((< 10) . edadPersona) personas

--all
sonTodosMayoresA20 :: Bool
sonTodosMayoresA20 = all ((> 20) . edadPersona) personas

sonTodosMenoresA50 :: Bool
sonTodosMenoresA50 = all ((< 50) . edadPersona) personas