##  title: 'Practica 1: Ejercicio 8'
##author: "Konrad Benjamin Trejo Chavez"
##date: "3 de mayo de 2018"

#### Item a) Creamos una data.frame hacemos los siguientes pasos:
#### * Creamos los vectores persona,sexo_f y puntacion_f

persona <- c("Stan","Francine","Steve","Roger","Hayley","Klaus")
class(persona)
sexo_f <-c(0,1,0,0,1,0)
puntuacion_f <-c(2,1,0,2,1,1)

#### * Hacemos el factor sexo y puntuacion con los niveles ("M","F") y ("bajo","medio","alto")
sexo <-factor(sexo_f,labels = c("M","F"))
class(sexo) #cumple que es un factor
sexo
puntuacion<-factor(puntuacion_f,labels = c("bajo","medio","alto"))
class(puntuacion) #cumple que es un factor
puntuacion

#### * Creamos el data frame con los vectores y factores anteriores
D_frame<- data.frame(persona,sexo,puntuacion)
D_frame

#### Item b) Creamos la tabla edad en el data Frame
#### * Creamos el vector numerico y luego anadimos al data frame
edad <-c(41,41,15,1600,21,60)
D_frame <-data.frame(D_frame,edad)
D_frame
#### Item c) Utilizamos los conocimientos de reordenar las variables
#### * Guardamos los valores de las columnas
columna_2 <-D_frame[2]
columna_3 <-D_frame[3]
columna_4 <- D_frame[4]
#### * Aplicamos los reordenamientos de columna e imprimimos el data frame
D_frame <-data.frame(persona,edad,sexo,puntuacion)
D_frame

#### Item d) Creamos el data frame mis_datos 
mis_datos <- data.frame(persona=c("Peter","Luis","Meg","Chris","Stewie"), edad=c(42,40,17,14,1), sexo=factor(c("M","F","F","M","M")))
mis_datos
#### * Incluimos la variable edad.mon
mis_datos$edad.mon <-mis_datos$edad*12
mis_datos
#### * Eliminamos la columna edad.mon y guardamos el resultado en otro data frame
mis_datos <- mis_datos[ ,!colnames(mis_datos)=="edad.mon"]
mis_datos2 <-mis_datos
mis_datos2
#### Item e) Ahora combinamos mis_datos2 con D_frame

#### * Usamos la funcion rbind que nos permite la combinacion de los data frame pero para esto deben tener ambos el mismo nomnbre 
names(D_frame)
names(mis_datos2)
# * Entonces a mis_datos2 le ponemos el name que "falta puntuacion"

puntuacion<- c(NA,NA,NA,NA,NA)
mis_datos2 <-data.frame(mis_datos2,puntuacion)
mis_datos2
#### * finalmente unimos 
misDatosFrame<-rbind(D_frame,mis_datos2)
misDatosFrame


