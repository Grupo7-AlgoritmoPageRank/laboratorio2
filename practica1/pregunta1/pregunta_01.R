### parte a) 
x <- seq(5,-11,by = -0.3)
cat ("el vector x =",x)
#parte b)
x <- seq(-11,5,by = 0.3)
cat("\n\n")
cat("el nuevo vector x = ",x)

### parte c)
y <- c(-1, 3, -5, 7, -9)
cat("\n el vector y = ",y)

z <- rep(y ,10)
cat ("\n vector con elementos repetidos 10 veces z=",z)
m <- rep (y,10)
s <-c(z,m)
##ordena el vector en forma decreciente con el algoritmo quick-sort

cat ("\nvector ordenado s= ")
sort.int(s,partial=NULL, na.last=NA, decreasing = TRUE, method= "quick")

###Item d) El codigo muestra un vector con las siguientes caracteristicas:
####Secuencia con enteros del 6 al 12 (inclusive)
####Repeticion triple del valor 5.3
####El numero -3
####Una secuencia de nueve valores que comienzan en 102 y termina en el n?mero que es la longitud total del vector creado en (c)


s1 <- c(seq(from=6,to=12),rep(5.3,3),-3,seq(from=102,to=length(s),length.out = 9))
s1


####Confirma que la longitud del vector creado en (d) es 20


length(s1)
