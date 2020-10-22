#Usando la función plot, genera un gráfico de dispersión haciendo uso del dataset airquality .
#Observa el dataset. ¿Que tipo de datos es? ¿Qué variables posee?
#Genera el gráfico de dispersión de la variable Temp respecto a la variable Ozone.

airquality
class(airquality)
colnames(airquality)
str(airquality)

plot(airquality$Temp,airquality$Ozone)


#Usando la función plot y el dataset ToothGrowth, genera un diagrama de cajas que represente el crecimiento de los
#dientes en función de la manera que recibió la vitamina C.
#Comprende de que trata dicho conjunto de datos.
#Crea el diagrama de cajas.

ToothGrowth
help("ToothGrowth")
str(ToothGrowth)
ToothGrowth

plot(ToothGrowth$supp,ToothGrowth$len)

#Usando el dataset airmiles, genera un gráfico de líneas que representa la evolución del número de pasajeros en los vuelos.
#Comprende de que trata dicho conjunto de datos.
#Crea el diagrama de líneas.

airmiles
str(airmiles)
plot(airmiles)

help(plot)


pch()
