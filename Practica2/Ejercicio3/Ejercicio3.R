#title: 'Practica2 : Pregunta 3'
#author: "konrad Trejo"
#date: "30 de mayo de 2018"
#output: pdf_document
#### Item a) Declaramos los vectores vec1 y vec2


vec1 <-c(2,1,2,3,2,1,0)
vec2 <-c(3,8,2,2,0,0,0)

if(vec1[1]+vec2[2]==10) {cat("Imprime el resultado\n")}

if(vec1[1]>=2 && vec2[1]>=2) {cat("Imprime el resultado\n")}

##if(all((vec2-vec1)[c(2,6)]<7)) {cat("imprime el resultado 3\n")}

if(!is.na(vec2[3])) {cat("Imprime el resultado \n")}
help(is.na)

#### En los casos 1,2 ,4 se cumple que impirme los resultados debido al cumplimineto de los condicionales

#### Item b)  Usando los vectores vec1 y vec2 anteriores imprime el producto si la suma de los vectores es mayor que 3 sino imprime solo la suma de vectores

for(j in 1:length(vec2)){
  if(vec1[j] + vec2[j] > 3){
    cat("la suma es: ", vec1[j]+vec2[j], "\n")
    
  }else{
    cat("El producto es: ", vec1[j] + vec2[j],"\n")
  }
}


#### Item c) comprobamos en una matriz cuadrada en su diagonal si alguna de las cadenas de caractereseb la diagonal comienza con la letra g, minuscula o mayuscula 
#### Por lo cual definimos una matriz mymat1, mymat2,mymat3

mymat1 <- matrix(as.character(1:16),4,4)

cat("\nmatriz mymat1: \n")
mymat1
mymat2 <- matrix(c("DANDELION","Hyacinthus","Gerbera","MARIGLOD","geranium","ligularia","Pachysandra","SNAPDRAGON","GLADIOLUS"),3,3)
cat("\nmatriz mymat2: \n")
mymat2

mymat3 <- matrix(c("GREAT","ejercicios","agua","hey"),2,2,byrow = T)
cat("\nmatriz mymat3 : \n")
mymat3

#### Analizamos cada matriz
#### Para la matriz mymat1

dia_matriz <- diag(mymat1)
estado <- FALSE 
for(i in 1:length(dia_matriz)){
  
  if(substr(dia_matriz[i], 1, 1) == 'g' || substr(dia_matriz[i], 1, 1) == 'G'){
    mymat1[i,i] <- "AQUI"
    estado <- TRUE
  }
}
if(estado == FALSE){
  for(i in 1:length(dia_matriz)){
    for (j in 1:length(dia_matriz)) {
      
      if(i==j){
        mymat1[i,j] <- 1
        
      }else{
        mymat1[i,j] <- 0
      }
    }
    
  }
}
mymat1

#### Para la matriz mymat2
dia_matriz <- diag(mymat2)
estado <- FALSE 
for(i in 1:length(dia_matriz)){
  
  if(substr(dia_matriz[i], 1, 1) == 'g' || substr(dia_matriz[i], 1, 1) == 'G'){
    mymat2[i,i] <- "AQUI"
    estado <- TRUE
  }
}
if(estado == FALSE){
  for(i in 1:length(dia_matriz)){
    for (j in 1:length(dia_matriz)) {
      
      if(i==j){
        mymat2[i,j] <- 1
        
      }else{
        mymat2[i,j] <- 0
      }
    }
    
  }
}
mymat2

#### Para la matriz mymat3
dia_matriz <- diag(mymat3)
estado <- FALSE 
for(i in 1:length(dia_matriz)){
  
  if(substr(dia_matriz[i], 1, 1) == 'g' || substr(dia_matriz[i], 1, 1) == 'G'){
    mymat3[i,i] <- "AQUI"
    estado <- TRUE
  }
}
if(estado == FALSE){
  for(i in 1:length(dia_matriz)){
    for (j in 1:length(dia_matriz)) {
      
      if(i==j){
        mymat3[i,j] <- 1
        
      }else{
        mymat3[i,j] <- 0
      }
    }
    
  }
}
mymat3





