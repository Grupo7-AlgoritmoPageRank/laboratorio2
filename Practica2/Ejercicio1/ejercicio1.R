
#title: 'Practica2: Ejercicio1'
#author: "Konrad Trejo"
#date: "15 de mayo de 2018"
#output: pdf_document
  

#### item a) Identifica los 20 primeros elementos contenidos en el paquete methods que se cargan al iniciar R ¿ cyantos items hay en total?

#### Usamos la funcion "ls" dado que lista todo el package necesitado, pero antes  con help sabremos que argumentos necesita "ls" asi que primero usaremos esto 
#### entonces la funcion ls retorna una arreglo con todo los objetos en este caso los metodos del paquete methods y los ordenaremos con el argumento sorted=TRUE Y pondremos todo en el arreglo elementos de los cuales imprimiremos solo 20 elementos:

help(ls)     
elementos <- ls ("package:methods", all.names = TRUE,sorted = TRUE);
elementos[1:20]


#### Contamos el numero total de metodos contenidos en el arreglo elementos con el metodo length:
length(elementos)

#### item b)Derminaremos el entorno al cual pertenece las siguientes funciones para eso usaremos la funcion enviroment

{r}
help("environment")
#### Luego el unico argumento que necesita en nuestro caso es el nombre de la funcion,pero no es el unico dado que dependiendo de su uso implementa otras variables

environment(read.table)
environment(data)
environment(matrix)
environment(jpeg)

#### Usamos ls para comprobar si smoothScatter es parte del paquete graphics
#### Recordamos los parametros a usar
help(ls)


# Luego compararemos si pertenece al paquete graficos (graphics) donde tendra que mostrarse true
ls("package:graphics")=="smoothScatter"
