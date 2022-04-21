module Library where
import PdePreludat

doble :: Number -> Number
doble numero = numero + numero


data Hechicero = Hechicero {
        nombre :: String,
        antiguedad :: Number,
        experiencia :: String,
        clan :: String,
        grado :: Number
}deriving (Show)

-- Hechiceros
nobara = Hechicero {nombre = "Nobara", antiguedad = 1, experiencia = "Estudiante", clan = "Kugisaki", grado = 3}
satoru = Hechicero {nombre = "Satoru", antiguedad = 15, experiencia = "Maestro", clan = "Gajo", grado = 0}
maki = Hechicero {nombre = "Maki", antiguedad = 3, experiencia = "Estudiante", clan = "Zenin", grado = 4}
yuji = Hechicero {nombre = "Yuji", antiguedad = 0, experiencia = "Novato", clan = "Kugisaki", grado = 1}


tieneExperiencia :: Hechicero -> String --o con bool
tieneExperiencia hechicero | grado hechicero >= 1 = "Tiene experiencia"
                           | otherwise = "No tiene experiencia"

type Equipo = [Hechicero]
equipoPreparado :: Equipo -> Bool
equipoPreparado equipo = length equipo >= 3

subirGrado :: Hechicero -> Hechicero
subirGrado hechicero | grado hechicero == 0 = hechicero
                     | otherwise = Hechicero {nombre = nombre hechicero, antiguedad = antiguedad hechicero, experiencia = experiencia hechicero, clan = clan hechicero, grado = grado hechicero - 1} 

clanesPrestigiosos = ["Zenin", "Gojo", "Kamo"]
esPrestigioso :: Hechicero -> Bool
esPrestigioso hechicero = elem (clan hechicero) clanesPrestigiosos 