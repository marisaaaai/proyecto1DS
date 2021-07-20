library(readxl)
setwd("C:/Users/Marisa Montoya}/OneDrive/Escritorio/DataScience/proyecto1")
AltaVerapaz <- read.csv("./data/Colegios_AltaVerapaz.csv")
BajaVerapaz <- read.csv("./data/Colegios_BajaVerapaz.csv")
Chimaltenango <- read.csv("./data/Colegios_Chimaltenango.csv")
Chiquimula <- read.csv("./data/Colegios_Chiquimula.csv")
CiudadCapital <- read.csv("./data/Colegios_CiudadCapital.csv")
ElProgreso <- read.csv("./data/Colegios_ElProgreso.csv")
Escuintla <- read.csv("./data/Colegios_Escuintla.csv")
Guatemala <- read.csv("./data/Colegios_Guatemala.csv")
Huehuetenango <- read.csv("./data/Colegios_Huehuetenango.csv")
Izabal <- read.csv("./data/Colegios_Izabal.csv")
Jalapa <- read.csv("./data/Colegios_Jalapa.csv")
Jutiapa <- read.csv("./data/Colegios_Jutiapa.csv")
Peten <- read.csv("./data/Colegios_Peten.csv")
Quetzaltenango <- read.csv("./data/Colegios_Quetzaltenango.csv")
Quiche <- read.csv("./data/Colegios_Quiche.csv")
Retalhuleu <- read.csv("./data/Colegios_Retahuleu.csv")
Sacatepequez <- read.csv("./data/Colegios_Sacatepequez.csv")
SanMarcos <- read.csv("./data/Colegios_SanMarcos.csv")
SantaRosa <- read.csv("./data/Colegios_SantaRosa.csv")
Solola <- read.csv("./data/Colegios_Solola.csv")
Suchitepequez <- read.csv("./data/Colegios_Suchitepequez.csv")
Totonicapan <- read.csv("./data/Colegios_Totonicapan.csv")
Zacapa <- read.csv("./data/Colegios_Zacapa.csv")


#primero removemos todas las primeras filas de los 23 datasets diferentes
#ya que no contiene informacion de una variable sino que tiene el nombre de las variables 
#que no necesitamos como fila per se
AltaVerapaz <- AltaVerapaz[-1,]
BajaVerapaz <- BajaVerapaz[-1,]
Chimaltenango <- Chimaltenango[-1,]
Chiquimula <- Chiquimula[-1,]
CiudadCapital <- CiudadCapital[-1,]
ElProgreso <- ElProgreso[-1,]
Escuintla <- Escuintla[-1,]
Guatemala <- Guatemala[-1,]
Huehuetenango <- Huehuetenango[-1,]
Izabal <- Izabal[-1,]
Jalapa <- Jalapa[-1,]
Jutiapa <- Jutiapa[-1,]
Peten <- Peten[-1,]
Quetzaltenango <- Quetzaltenango[-1,]
Quiche <- Quiche[-1,]
Retalhuleu <- Retalhuleu[-1,]
Sacatepequez <- Sacatepequez[-1,]
SanMarcos <- SanMarcos[-1,]
SantaRosa <- SantaRosa[-1,]
Solola <- Solola[-1,]
Suchitepequez <- Suchitepequez[-1,]
Totonicapan <- Totonicapan[-1,]
Zacapa <- Zacapa[-1,]

#nos aseguramos de las variables que conocemos que son fijas si tengan todos los valores
#Departamento, nivel, departamental (en los datasets excluyendo el de Guatemala, ciudad capital y quiche)

#Cambio de departamentales
table(AltaVerapaz$X.16)
AltaVerapaz$X.16 <- "ALTA VERAPAZ"
table(BajaVerapaz$X.16)
BajaVerapaz$X.16 <- "BAJA VERAPAZ"
table(Chimaltenango$X.16)
Chimaltenango$X.16 <- "CHIMALTENANGO"
table(Chiquimula$X.16)
Chiquimula$X.16 <- "CHIQUIMULA"
table(CiudadCapital$X.16)
#CiudadCapital$X.16 <- "ALTA VERAPAZ"
table(ElProgreso$X.16)
ElProgreso$X.16 <- "EL PROGRESO"
table(Escuintla$X.16)
Escuintla$X.16 <- "ESCUINTLA"
table(Guatemala$X.16)
#Guatemala$X.16 <- "ALTA VERAPAZ"
table(Huehuetenango$X.16)
Huehuetenango$X.16 <- "HUEHUETENANGO"
table(Izabal$X.16)
Izabal$X.16 <- "IZABAL"
table(Jalapa$X.16)
Jalapa$X.16 <- "JALAPA"
table(Jutiapa$X.16)
Jutiapa$X.16 <- "JUTIAPA"
table(Peten$X.16)
Peten$X.16 <- "PETEN"
table(Quetzaltenango$X.16)
Quetzaltenango$X.16 <- "QUETZALTENANGO"
table(Quiche$X.16)
#Quiche$X.16 <- "ALTA VERAPAZ"
table(Retalhuleu$X.16)
Retalhuleu$X.16 <- "RETALHULEU"
table(Sacatepequez$X.16)
Sacatepequez$X.16 <- "SACATEPEQUEZ"
table(SanMarcos$X.16)
SanMarcos$X.16 <- "SAN MARCOS"
table(SantaRosa$X.16)
SantaRosa$X.16 <- "SANTA ROSA"
table(Solola$X.16)
Solola$X.16 <- "SOLOLA"
table(Suchitepequez$X.16)
Suchitepequez$X.16 <- "SUCHITEPEQUEZ"
table(Totonicapan$X.16)
Totonicapan$X.16 <- "TOTONICAPAN"
table(Zacapa$X.16)
Zacapa$X.16 <- "ZACAPA"

#Cambio de departamento
AltaVerapaz$X.2 <- "ALTA VERAPAZ"
BajaVerapaz$X.2 <- "BAJA VERAPAZ"
Chimaltenango$X.2 <- "CHIMALTENANGO"
Chiquimula$X.2 <- "CHIQUIMULA"
CiudadCapital$X.2 <- "CIUDAD CAPITAL"
ElProgreso$X.2 <- "EL PROGRESO"
Escuintla$X.2 <- "ESCUINTLA"
Guatemala$X.2 <- "GUATEMALA"
Huehuetenango$X.2 <- "HUEHUETENANGO"
Izabal$X.2 <- "IZABAL"
Jalapa$X.2 <- "JALAPA"
Jutiapa$X.2 <- "JUTIAPA"
Peten$X.2 <- "PETEN"
Quetzaltenango$X.2 <- "QUETZALTENANGO"
Quiche$X.2 <- "QUICHE"
Retalhuleu$X.2 <- "RETALHULEU"
Sacatepequez$X.2 <- "SACATEPEQUEZ"
SanMarcos$X.2 <- "SAN MARCOS"
SantaRosa$X.2 <- "SANTA ROSA"
Solola$X.2 <- "SOLOLA"
Suchitepequez$X.2 <- "SUCHITEPEQUEZ"
Totonicapan$X.2 <- "TOTONICAPAN"
Zacapa$X.2 <- "ZACAPA"

#Nivel
AltaVerapaz$X.9 <- "DIVERSIFICADO"
BajaVerapaz$X.9 <- "DIVERSIFICADO"
Chimaltenango$X.9 <- "DIVERSIFICADO"
Chiquimula$X.9 <- "DIVERSIFICADO"
CiudadCapital$X.9 <- "DIVERSIFICADO"
ElProgreso$X.9 <- "DIVERSIFICADO"
Escuintla$X.9 <- "DIVERSIFICADO"
Guatemala$X.9 <- "DIVERSIFICADO"
Huehuetenango$X.9 <- "DIVERSIFICADO"
Izabal$X.9 <- "DIVERSIFICADO"
Jalapa$X.9 <- "DIVERSIFICADO"
Jutiapa$X.9 <- "DIVERSIFICADO"
Peten$X.9 <- "DIVERSIFICADO"
Quetzaltenango$X.9 <- "DIVERSIFICADO"
Quiche$X.9 <- "DIVERSIFICADO"
Retalhuleu$X.9 <- "DIVERSIFICADO"
Sacatepequez$X.9 <- "DIVERSIFICADO"
SanMarcos$X.9 <- "DIVERSIFICADO"
SantaRosa$X.9 <- "DIVERSIFICADO"
Solola$X.9 <- "DIVERSIFICADO"
Suchitepequez$X.9 <- "DIVERSIFICADO"
Totonicapan$X.9 <- "DIVERSIFICADO"
Zacapa$X.9 <- "DIVERSIFICADO"


#Cada data set tienen dos filas al final que son extras y que solamente nos da e numero 
#de establecimientos encontrados entonces eliminaremos tambien esas filas
AltaVerapaz <- AltaVerapaz[-c(281,282),]
BajaVerapaz <- BajaVerapaz[-c(115,116),]
Chimaltenango <- Chimaltenango[-c(291,292),]
Chiquimula <- Chiquimula[-c(169,170),]
CiudadCapital <- CiudadCapital[-c(1350,1351),]
ElProgreso <- ElProgreso[-c(112,113),]
Escuintla <- Escuintla[-c(497,498),]
Guatemala <- Guatemala[-c(1238,1239),]
Huehuetenango <- Huehuetenango[-c(438,439),]
Izabal <- Izabal[-c(304,305),]
Jalapa <- Jalapa[-c(117,118),]
Jutiapa <- Jutiapa[-c(266,267),]
Peten <- Peten[-c(358,359),]
Quetzaltenango <- Quetzaltenango[-c(431,432),]
Quiche <- Quiche[-c(213,214),]
Retalhuleu <- Retalhuleu[-c(256,257),]
Sacatepequez <- Sacatepequez[-c(277,278),]
SanMarcos <- SanMarcos[-c(487,488),]
SantaRosa <- SantaRosa[-c(141,142),]
Solola <- Solola[-c(139,140),]
Suchitepequez <- Suchitepequez[-c(331,332),]
Totonicapan <- Totonicapan[-c(82,83),]
Zacapa <- Zacapa[-c(94,95),]

total <- do.call("rbind", list(AltaVerapaz, BajaVerapaz, Chimaltenango,Chiquimula,CiudadCapital,ElProgreso,Escuintla,Guatemala,Huehuetenango,Izabal,Jalapa,Jutiapa,Peten,Quetzaltenango,Quiche,Retalhuleu,Sacatepequez,SanMarcos,SantaRosa,Solola,Suchitepequez,Totonicapan,Zacapa))

#Ahora que se encuentran en una sola dataset se le cambia el nombre
# a las columnas para las variables a las que pertencen
colnames(total)<- c("CODIGO","DISTRITO","DEPARTAMENTO","MUNICIPIO","ESTABLECIMIENTO","DIRECCION","TELEFONO","SUPERVISOR","DIRECTOR","NIVEL","SECTOR","AREA","STATUS","MODALIDAD","JORNADA","PLAN","DEPARTAMENTAL")
#Se colocan NA en las columan en donde no hayan valores
total$CODIGO <- ifelse(total$CODIGO == "", NA, total$CODIGO)
total$DISTRITO <- ifelse(total$DISTRITO == "", NA, total$DISTRITO)
total$DEPARTAMENTO <- ifelse(total$DEPARTAMENTO == "", NA, total$DEPARTAMENTO)
total$MUNICIPIO <- ifelse(total$MUNICIPIO == "", NA, total$MUNICIPIO)
total$ESTABLECIMIENTO <- ifelse(total$ESTABLECIMIENTO == "", NA, total$ESTABLECIMIENTO)
total$DIRECCION <- ifelse(total$DIRECCION == "", NA, total$DIRECCION)
total$TELEFONO <- ifelse(total$TELEFONO == "", NA, total$TELEFONO)
total$SUPERVISOR <- ifelse(total$SUPERVISOR == "", NA, total$SUPERVISOR)
total$DIRECTOR <- ifelse(total$DIRECTOR == "", NA, total$DIRECTOR)
total$NIVEL <- ifelse(total$NIVEL == "", NA, total$NIVEL)
total$SECTOR <- ifelse(total$SECTOR == "", NA, total$SECTOR)
total$AREA <- ifelse(total$AREA == "", NA, total$AREA)
total$STATUS <- ifelse(total$STATUS == "", NA, total$STATUS)
total$MODALIDAD <- ifelse(total$MODALIDAD == "", NA, total$MODALIDAD)
total$JORNADA <- ifelse(total$JORNADA == "", NA, total$JORNADA)
total$PLAN <- ifelse(total$PLAN == "", NA, total$PLAN)
total$DEPARTAMENTAL <- ifelse(total$DEPARTAMENTAL == "", NA, total$DEPARTAMENTAL)
#Ver cuantos NA hay
summary(total)
table(is.na(total$CODIGO))
table(is.na(total$DISTRITO))
table(is.na(total$DEPARTAMENTO))
table(is.na(total$MUNICIPIO))
table(is.na(total$ESTABLECIMIENTO))
table(is.na(total$DIRECCION))
table(is.na(total$TELEFONO))
table(is.na(total$SUPERVISOR))
table(is.na(total$DIRECTOR))
table(is.na(total$NIVEL))
table(is.na(total$SECTOR))
table(is.na(total$AREA))
table(is.na(total$STATUS))
table(is.na(total$MODALIDAD))
table(is.na(total$JORNADA))
table(is.na(total$PLAN))
table(is.na(total$DEPARTAMENTAL))

#CAMBIAR TODOS LOS VACIOS EN LA COLUMNA DE DIRECTOR POR NA
head(sort(table(total$DIRECTOR), decreasing = T))
total$DIRECTOR <- ifelse(total$DIRECTOR == "-", NA, total$DIRECTOR)
total$DIRECTOR <- ifelse(total$DIRECTOR == "--", NA, total$DIRECTOR)
total$DIRECTOR <- ifelse(total$DIRECTOR == "---", NA, total$DIRECTOR)
total$DIRECTOR <- ifelse(total$DIRECTOR == "----", NA, total$DIRECTOR)
total$DIRECTOR <- ifelse(total$DIRECTOR == "-----", NA, total$DIRECTOR)
total$DIRECTOR <- ifelse(total$DIRECTOR == ".", NA, total$DIRECTOR)
total$DIRECTOR <- ifelse(total$DIRECTOR == "---------------", NA, total$DIRECTOR)
total$DIRECTOR <- ifelse(total$DIRECTOR == "0", NA, total$DIRECTOR)
total$DIRECTOR <- ifelse(total$DIRECTOR == "-------------", NA, total$DIRECTOR)
total$DIRECTOR <- ifelse(total$DIRECTOR == "-----------------------------", NA, total$DIRECTOR)
#CAMBIAR EL AREA SIN ESPECIFICAR POR NA
head(sort(table(total$AREA), decreasing = F))
total$AREA <- ifelse(total$AREA == "SIN ESPECIFICAR", NA, total$AREA)
