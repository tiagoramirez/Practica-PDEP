data Persona = Persona
  { nombre :: String,
    apellido :: String,
    edad :: Integer
  }
  deriving (Show, Eq, Ord)

tiago :: Persona
tiago =
  Persona
    { nombre = "Tiago",
      edad = 20,
      apellido = "Ramirez"
    }

roberto :: Persona
roberto = Persona "Roberto" "Peterson" 30