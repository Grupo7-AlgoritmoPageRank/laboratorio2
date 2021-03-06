#### laboratorio1: pregunta4
#### konrad benjamin trejo chavez


#### a) identificamos a que clase pertenece cada objeto mostrado a continuacion 
#### dado que en R todo es un objeto,definiremos si esta definida explicta o implicitamente d
f1 <- array(data = 1:36, dim=c(3,3,4))
class(f1)

#### class definida explicitamente
bar<- as.vector(f1)
class(bar)

####class definida implicitamente
baz<-as.character(bar)
class(baz)

#### class definida explicitamente

qux<-as.factor(baz)
class(qux)
#### class definida explicitamente

quux<-bar+c(-0.1,0.1)
class(quux)

#### class definida implicitamente

#### b)Para los objetos definidos en  el item anterior hallamos la suma de is.numeric(x)+ is.integer(x) donde
#### is.numeric: es verdadero si el parametro es numerico, caso contrario es falso
#### is.integer: es verdadero si el parametro es entero, caso contrario es falso

item1 <-is.numeric(f1)+is.integer(f1)
item2 <-is.numeric(bar)+is.integer(bar)
item3 <-is.numeric(baz)+is.integer(baz)
item4 <-is.numeric(qux)+is.integer(qux)
item5 <-is.numeric(quux)+is.integer(quux)
#### convierto la coleccion en un factor con 3 niveles, definimos los niveles 

lev <- c(0,1,2)
col_items <- c(item1,item2,item3,item4,item5)
factor_items <- factor(col_items, levels = lev)
factor_items

#### ahora vamos a coercer en un vector numerico
vector_numerico <- as.numeric(factor_items)
vector_numerico
#### al comparar los elementos del vector con los del factor notamos que los elementos del vector es mayor en una unidad. 

#### c) almacenamos los valores en el siguiente vector A
#### donde usamos la funcion cbind que es la que toma una secuencia de vectores

fila1 <- c(34, 23, 33, 42, 41)
fila2 <- c(0,1,1,0,0)
fila3 <- c(1,2,NA,1,2)
A <- cbind(fila1,fila2,fila3)
A

#### realizamos una coercion de la matriz a un data frame
frame_A <- as.data.frame(A)
class(frame_A)
frame_A

#### Realizamos una coercion de la segunda columna a un valor logico...
#### primero hacemos una coercion a una matriz,luego realizamos una coercion a un valor logico y finalmente remplazamos el valor de la columa_2  

Columna_2 <- frame_A[2]  
Columna_2 <- as.matrix(frame_A[2]) 
Columna_2 <- as.logical(Columna_2)  
frame_A[2] <- Columna_2  

frame_A  #imprimimos el frame_A

#### Realizamos una coercion de la tercera columna a un valor factor.....
#### primero hacemos una coercion a una matriz,luego realizamos una coercion a un valor logico y finalmente remplazamos el valor de la columa_3   

Columna_3 <- frame_A[3]
Columna_3 <- as.matrix(frame_A[3])
Columna_3 <- as.factor(Columna_3)  
frame_A[3] <- Columna_3  
frame_A

