{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

saberSiEsMayor :: Integer -> [Char]
saberSiEsMayor anioNacimiento
  | calculoEdad > 18 = mostrarPalabraEdadYAgregarPunto "Es mayor de edad"
  | calculoEdad < 0 = mostrarPalabraEdadYAgregarPunto "Todavia no nacio"
  | calculoEdad >= 0 = mostrarPalabraEdadYAgregarPunto "Es menor de edad"
  where
    calculoEdad = 2022 - anioNacimiento
    mostrarPalabraEdadYAgregarPunto str = str ++ "."