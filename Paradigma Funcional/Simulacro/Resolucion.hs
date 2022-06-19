import Text.Show.Functions

data Candidato = Candidato
  { nombre :: String,
    edad :: Float,
    carisma :: Float,
    capacidades :: [Capacidad]
  }
  deriving (Show)

type Capacidad = Candidato -> Float

-- 1.a)
facha :: Capacidad
facha candidato = (60 - edad candidato) + (carisma candidato * 3)

-- 1.b)
liderazgo :: Capacidad
liderazgo = (* 10) . edad

-- 1.c)
riqueza :: Capacidad
riqueza candidato = carisma candidato + edad candidato / 50

-- 1.d)
corrupto :: Capacidad
corrupto _ = -100.0

-- 1.e)
tiktoker :: Capacidad
tiktoker _ = 100.0

-- 1.f)
flogger :: Capacidad
flogger _ = 0.0

-- 2)

cintia :: Candidato
cintia =
  Candidato
    { nombre = "Cintia",
      edad = 40,
      carisma = 12,
      capacidades = [liderazgo, riqueza, tiktoker]
    }

marcos :: Candidato
marcos =
  Candidato
    { nombre = "Marcos",
      edad = 45,
      carisma = 10,
      capacidades = [facha, liderazgo, corrupto]
    }

-- 3)
tieneCapacidadInutil :: Candidato -> Bool
tieneCapacidadInutil candidato = any (esCapacidadIntuil candidato) (capacidades candidato)

esCapacidadIntuil :: Candidato -> Capacidad -> Bool
esCapacidadIntuil candidato capacidad = (<= 0) . capacidad $ candidato

-- 4)
candidatosSinCapacidadInutil :: [Candidato] -> [Candidato]
candidatosSinCapacidadInutil = filter (not . tieneCapacidadInutil)

-- 5)
evaluarCandidato :: Candidato -> (String, Float)
evaluarCandidato candidato = (nombre candidato, convencimientoCandidato candidato)

convencimientoCandidato :: Candidato -> Float
convencimientoCandidato candidato = (sum . map (\capacidad -> capacidad candidato)) (capacidades candidato)

-- 6)
elMejor :: Ord a => p -> p -> (p -> a) -> p
elMejor elemento1 elemento2 operacion
  | operacion elemento1 >= operacion elemento2 = elemento1
  | otherwise = elemento2

-- 7)
votacion :: Float -> [Candidato] -> [(String, Float)]
votacion votantes candidatos = map (\candidato -> (nombre candidato, calcularVotos votantes candidatos candidato)) candidatos

calcularVotos :: Float -> [Candidato] -> Candidato -> Float
calcularVotos cantidadVotantes candidatos candidato = cantidadVotantes * (convencimientoCandidato candidato) / (totalConvencimiento candidatos)

totalConvencimiento :: [Candidato] -> Float
totalConvencimiento = sum . map convencimientoCandidato

-- 8.a)
ganador :: Float -> [Candidato] -> Candidato
ganador cantidadVotantes candidatos = foldl1 (\acumulador candidato -> elMejor acumulador candidato (calcularVotos cantidadVotantes candidatos)) candidatos

-- 8.b)
elMasFachero :: [Candidato] -> Candidato
elMasFachero = foldl1 (\acumulador candidato -> elMejor acumulador candidato facha)

-- 8.c)
elMasMolestoDeNombrar :: [Candidato] -> Candidato
elMasMolestoDeNombrar = foldl1 (\acumulador candidato -> elMejor acumulador candidato (length . nombre))

tiago :: Candidato
tiago =
  Candidato
    { nombre = "Tiagoaaaa",
      edad = 100,
      carisma = 10,
      capacidades = [liderazgo]
    }