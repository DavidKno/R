#Dado un vector con los valores del 1 al 36:
#1.-Convierte dicho vector en una nueva matriz cuadrada modificando el valor de su dimensión.
#2.-Convierte dicho vector en una variable indexada o array con dimensiones x,y,z = 3 x 3 x 4. 
#Recupera los valores cuya z = 2.
#3.-Utiliza la funcion matrix para crear una matriz 
#con 4 filas y 9 columnas. Recupera el valor de la fila 4 columna 5.
#4.-Crea una nueva matriz, con las dimensiones apropiadas para que la propiedad de reciclado haga que los valores se repitan 2 veces cada uno. Es decir, en la matriz, cada valor del 1 al 36 tendra dos apariciones.
#5.-Idem para que solo aparezcan los valores del 1 al 18.

v = c(1:36)
#1.-
dim(v) = c(6,6)
v
#2.-
dim(v) = c(3,3,4)
v[,,2]
#3.-
mat= matrix(data=c(1:36),nrow=4,ncol = 9)
mat[4,5]
#4.-
matRep= matrix(data=c(1:36),nrow=8,ncol = 18)
matRep
#5.-
matDiv= matrix(data=c(1:36),nrow=2,ncol = 9)
matDiv


#Partiendo de las matrices a y b que se muestran a continuacion:
#a = matrix(c(c(2,4),c(2,1),c(3,2)), nrow = 2, ncol = 3)
#b = matrix(c(c(1,2),c(1,0),c(1,2)), nrow = 2, ncol = 3)

#¿Cuál es la dimensión de cada matriz? ¿Se puede realizar la operación a*b?
#Realiza la operación a/b + 2.
#Realiza el producto exterior de a por b. ¿Que dimension tiene?

a = matrix(c(c(2,4),c(2,1),c(3,2)), nrow = 2, ncol = 3)
a
b = matrix(c(c(1,2),c(1,0),c(1,2)), nrow = 2, ncol = 3)
b
#1.-
Si, la dimension es la misma.
a*b
#2.-
a/b+2
#3.-
z=outer(a,b,"*")
dim(z)

#Utilizando las matrices a y b creadas en el ejercicio 2:
  
#Crea una matriz c fruto de la concatenación de a y b de manera que c tenga 4 filas.
#Añade a dicha matriz un vector v que transforme la matriz en una matriz cuadrada.
#Calcula la diagonal de la matriz cuadrada que acabamos de crear.
#Calcula su traspuesta
#1.-
c= rbind(a,b)
c
#2.-
w= c(1:4)
cua = cbind(c,w)
cua
#3.-
diagonal=diag(cua)
diagonal
#4.-
trans=aperm(cua)
trans



#Vamos a recuperar el vector de personas y de salarios que usamos 
#en la leccion "Ejercicios con factores y listas". Haciendo uso de 
#estos vectores, crea una tabla de frecuencia conjunta que 
#represente la frecuencia de cada salario por paises. 
#Luego, crea una nueva tabla de frecuencia que represente el número 
#de personas que tienen un salario superior a 25 por pais.

personas <- c("DE","BG","ES","AT","BE","FR","BG","HU","HU","ES","DE","FR","GB","CZ","PT", "ES","GB","FR","BG","CZ","BG","FR","PT","ES","BE","AT","DE","CZ","ES","GB")
salarios = c(27,15,24,22,16,30,40,21,39,21,49,23,19,19,53,51,33,22,29,40,31,52,44,32,17,23,21,50,22,19)
factPer = factor(personas)
factSal = factor(salarios)
#Tabla
frecPer_Sal =table(factPer, factSal)
frecPer_Sal

sal25 =salarios > 25
factSal25=factor(sal25)
frec25 = table(factPer, factSal25)
frec25
