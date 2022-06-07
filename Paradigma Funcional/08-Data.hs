data Persona = Persona
  { nombre :: String,
    apellido :: String,
    edad :: Integer,
    dni :: Integer,
    familia :: [String]
  }
  deriving (Ord)

tiago :: Persona
tiago =
  Persona
    { nombre = "Tiago",
      edad = 20,
      familia = ["YO", "Estoy", "Solo", ":'c"],
      apellido = "Ramirez",
      dni = 333333
    }

roberto :: Persona
roberto = Persona "Roberto" "Peterson" 30 123123123 ["Juan", "Roberta"]

instance Show Persona where
  show (Persona nombrePersona apellidoPersona edadPersona dniPersona familiaPersona) =
    show nombrePersona ++ ", "
      ++ show apellidoPersona
      ++ ", "
      ++ show dniPersona
      ++ ", "
      ++ show edadPersona
      ++ ", "
      ++ show (map (++ "Hola") familiaPersona)

instance Eq Persona where
  (==) persona otraPersona = (dni persona) == (dni otraPersona)