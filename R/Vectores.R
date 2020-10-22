# Crear var a tipo integer con valor 5. Tambien una b de tipo numeric 
# con el mismo valor 
# Por ultimo crea una c de tipo logical dada por la comparacion de a y b

a = as.integer(5)
b = as.numeric(5)
c = 5==5

a ; b ; c
typeof(b)

#Utiliza la variable "sprintf" para imprimir una cadena compuesta por
#dos variables

am = "Amancio"
bi = 89

sprintf("Esto es un aviso para %s ya que no paga %i.",am,bi )

#Crea el vector numerico con los valores 4,5,2,14. 
#Luego , crea un nuevo vector que sea el anterior pero por 3.
#Muestra por pantalla el primer elemento del vector resultante.

v = c(4,5,2,14)

v1 = v*3

v1[1]

#Crea los siguientes vectores:
# Vector1:[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20]
# Vector2:["Openwebinars", "Openwebinars", "Openwebinars", "Openwebinars", "Openwebinars"]
# Vector3:[0.0 1.5 3.0 4.5 6.0 7.5 9.0 10.5 12]
#Luego calcula la media del vector1
#Calcula la posicion donde se encuentra el valor 10 en el vector 1.
# Calcula el tamaño del vector 2
#La media y el rango del vecctor 3
#Ordenar de manera inversa el vector 3.

vector1 = c(1:20)
vector2 = rep("Openwebinars", time=5)
vector3 = seq(1,12, by = 1.5)

mean(vector1)
which(vector1==10)
length(vector2)

mean(vector3)
range(vector3)
rev(sort(vector3))

vector3

