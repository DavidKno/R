#Crea una lista con:
#Tu nombre, tu ciudad, el nombre de tus 3 mejores amigos y la edad de tus 3 mejores amigos.

lista = list(Nombre="David",ciudad="Madrid",amigos.nombres = c("Saul","Alex","Pepe"),amigos.edad=c(16,20,22))

# De la lista anterior crea un nuevo valor con la media de la edad de los
# amigos.

edad=lista [[4]]
edadMedia = mean(edad)
lista$amigos.mediaEdad = edadMedia
lista

#Usando el vector personas de la explicaicion, crea un factor ordenado.Despues 
# crea un vector del mismo tamaño con la info del salario anual.calcula:
#Cuantas personas españaolas estan en el factor, los salarios de los españoles,
# el salario medio de las nacionalidades, el salario medio de FR y los paises
# que tienen personas con salario mayor a 50k.

personas = c("DE","BG","ES","AT","BE","FR","BG","HU","HU","ES","DE","FR","GB","CZ","PT",
              "ES","GB","FR","BG","CZ","BG","FR","PT","ES","BE","AT","DE","CZ","ES","GB")

factorOrd = ordered(personas)
factorOrd

salario = c(20000,30000,10000,20000,30000,40000,50000,60000,10000,20000,20000,30000,40000,50000,60000,10000,20000,30000,40000,10000,20000,30000,40000,10000,20000,30000,40000,50000,10000,20000)
#Personas españolas
españoles=which(factorOrd == "ES")
length(españoles)
#Mostrar salario de los españoles
sprintf("El salario es %i %i %i %i %i", salario[españoles[1]],salario[españoles[2]],salario[españoles[3]],salario[españoles[4]],salario[españoles[5]])
#Salario medio por nacionalidades
salarioMed=tapply(salario, factorOrd, mean)
#salario medio de FR
salarioMed["FR"]
#paises con salario superior a 50k (Primero mio y el siguiente es el bueno.)
indicesBuenSueldo = which(salario >= 50000)
personas[indicesBuenSueldo[1]]
#Bueno
factorOrd[salario >= 50000]

