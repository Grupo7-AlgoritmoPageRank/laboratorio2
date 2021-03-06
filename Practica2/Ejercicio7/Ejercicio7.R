#title: 'Practica2 : Ejercicio7'
#author: "Rommel Bazalar Collantes"
#date: "10 de junio de 2018"
#output: pdf_document

  

#### Item a) Definimos el tamaño de la muestra S_muestra, donde definimos la muestra A que es la muestra recibida y info que es la informacion original
#### Probamos con la muestra A=c(+,+,-,+,-)

S_muestra <- 8

Info <- sample(c("+", "-"), size = S_muestra, replace = TRUE)
Info 

A <- sample(c("+", "+", "-","+","-"), size = S_muestra, replace = TRUE)
A 

long_A <- length(A)
B <- 0 # total de caracteres válidos

if(long_A >= 1 || long_A <= 10){ 
  
  for(i in 1:long_A){
    caracter <- A[i]
    if(caracter != "?") 
      B <- B + 1
  }
  
  probabilidad <- B/S_muestra 
  probabilidad
  format(round(probabilidad,8), nsmall=8) 
}
#en la cual obtenemos la probabilidad = 1


# Item b) Tenemos que Obtener la probabilidad  que que gane el encuetro al lanzarse 3 dado  que ya lanzaron sus hermanas Vilma y Esther obteniendo B y C puntos respectivamente

sumaDados <- c(0,0)

for(i in 1:2){
  
  Dado1 <- sample(1:6, 1, replace = TRUE, prob = NULL)
  Dado2 <- sample(1:6, 1, replace = TRUE, prob = NULL)
  Dado3 <- sample(1:6, 1, replace = TRUE, prob = NULL)
  
  sumaDados[i] <- Dado1 + Dado2 + Dado3
}

B <- sumaDados[1]
C <- sumaDados[2]

total_casos <- 0 

variable_X <- c(NA, NA, 1, 19, 16, 10, 15, 21, 14, 17, 27, 25, 10, 10, 10, 6, 13, 10)

for(i in max(B,C):length(variable_X))
  total_casos <- total_casos + variable_X[i]

espacioMuestral <- 6*6*6 

cat(" Probabilidad")
probabilidad <- total_casos/espacioMuestral
probabilidad
paste(total_casos,"/",espacioMuestral)


variable_X <- c(NA, NA, rep(0, 16)) 
contador_lanzamiento <- 0 
estado <- 0 

while(contador_lanzamiento != 216){
  
  Dado1 <- sample(1:6, 1, replace = TRUE, prob = NULL)
  Dado2 <- sample(1:6, 1, replace = TRUE, prob = NULL)
  Dado3 <- sample(1:6, 1, replace = TRUE, prob = NULL)
  
  if(contador_lanzamiento == 0){
    ternas_turno <- list(c(Dado1, Dado2, Dado3)) 
  }else{
    for(i in 1:length(ternas_turno))
      if(all(ternas_turno[[i]] == c(Dado1,Dado2,Dado3))){ 
        estado <- 1 
        break 
      }
  }
  
  if(estado == 0){ 
    ternas_turno <- c(ternas_turno, list(c(Dado1, Dado2, Dado3))) 
    sumaDados <- Dado1 + Dado2 + Dado3
    for(i in 3:18)
      if(sumaDados == i){
        variable_X[i] <- variable_X[i] + 1 
        contador_lanzamiento <- contador_lanzamiento + 1 
        break 
      }
  }else{
    estado <- 0 
  }
  
} 

for(i in 3:18)
  print(paste(i, "= ", variable_X[i])) 

cat("espacio muestral : ")
sum(variable_X[3:18]) 
