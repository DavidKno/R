#Usando la funci�n plot, genera un gr�fico de dispersi�n haciendo uso del dataset airquality .
#Observa el dataset. �Que tipo de datos es? �Qu� variables posee?
#Genera el gr�fico de dispersi�n de la variable Temp respecto a la variable Ozone.

airquality
class(airquality)
colnames(airquality)
str(airquality)

plot(airquality$Temp,airquality$Ozone)


#Usando la funci�n plot y el dataset ToothGrowth, genera un diagrama de cajas que represente el crecimiento de los
#dientes en funci�n de la manera que recibi� la vitamina C.
#Comprende de que trata dicho conjunto de datos.
#Crea el diagrama de cajas.

ToothGrowth
help("ToothGrowth")
str(ToothGrowth)
ToothGrowth

plot(ToothGrowth$supp,ToothGrowth$len)

#Usando el dataset airmiles, genera un gr�fico de l�neas que representa la evoluci�n del n�mero de pasajeros en los vuelos.
#Comprende de que trata dicho conjunto de datos.
#Crea el diagrama de l�neas.

airmiles
str(airmiles)
plot(airmiles)

help(plot)


pch()
