#Haciendo uso del data set Titanic , propio de R, crea un fichero en el que se muestre 
#el número total de supervivientes adultos.

tit=Titanic[, , Age="Adult", Supervived = "Yes"]
read.table (file = "fichTitanic.txt", header=TRUE,sep=" ")

vicHom=sum(tit[,1])
vicMuj=sum(tit[,2])
vicTol=sum(vicHom, vicMuj)

res= c("Han sobrevivido", vicHom, "hombres", vicMuj, "mujeres y en total", vicTol, "personas")
res

writeLines(res,file("fichTitanic.txt"), sep =" ")


#Escribe el conjunto de datos usado en el ejercicio anterior, de manera completa, en un nuevo fichero 
#con nombre "Titanic.csv" y con los campos separados por coma. Repite este ejercicio, creando un nuevo fichero "Titanic.txt" donde los campos estén separados por el caracter dolar ('$').
#En el primer caso, la primera linea debe estar formada por la cabecera, mientras que en el segundo
#no debe existir cabecera.
Titanic     

file.create("Titanic.csv")
write.csv(Titanic,file = "Titanic.csv", eol = "\n")

file.create("Titanic.txt")
write.table(Titanic,file = "Titanic.txt",sep = "$",eol = "\n",col.names = FALSE)

#Lee el fichero escrito en el ejercicio 2 (Titanic.csv). ¿Qué tipo de objeto obtenemos? 
read.csv(file = "Titanic.csv")
str("Titanic.csv")


#