
#Usando el dataframe de mtcars:
#Sacar un listado del nombre de las columnas y filas que tiene el dataframe.
#Sacar un listado con los valores de la columna carb (Carburadores).
#A�ade una nueva variable con la informaci�n del a�o de cada coche (A�o aleatorio).
#Crea un nuevo dataframe �nicamente con la informaci�n de las primeras 4 filas. Transforma dicho dataframe en una matriz.

#1.-
mtcars
filas= rownames(mtcars)
filas
columnas=colnames(mtcars)
columnas
#2.-
carburantes=mtcars$carb
carburantes
#3.-
mtcars$ano = c(1970:2001)
mtcars$ano
mtcars
#4.-
carsNew =mtcars[1:4,]
carsMatriz = as.matrix(carsNew)
carsMatriz
is.matrix(carsMatriz)


#Siguiendo con el dataframe anterior:
  
#Utiliza la funci�n attach() y comprueba su funcionamiento con la nueva variable creada en el ejercicio 1.
#Modifica el valor de dicha variable haciendo uso del operador asignaci�n <-
#�Ha cambiado el valor en el dataframe?
#Deshabilita haciendo uso de la funci�n detach().
#1.-
attach(mtcars)
ano

#2.-
ano <- c(1980:2011)
ano
#3.-
mtcars$ano
No, el valor no a cambiado en el dataframe
#4.-
detach(mtcars)


#Usando de nuevo el dataframe anterior:

#Filtra �nicamente los coches Mercedes ("Merc").
#Calcular el valor medio del peso de dichos coches (columna wt)
#Crea una matriz que contenga la informaci�n �nicamente de las primeras 5 columnas del dataframe filtrado.

mtcars
#1.-
busqueda=grep("Merc", rownames(mtcars))
busqueda
mercedes=mtcars[busqueda,]
mercedes
#2.-
mercedes$wt
pesoMedio=mean(mercedes$wt)
pesoMedio
#3.-
mercFiltrado = as.matrix(mercedes[,1:5])
mercFiltrado
is.matrix(mercFiltrado)

