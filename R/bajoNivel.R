#Haciendo uso del data set mtcars:
  
#Dibuja un gráfico de barras que represente la cantidad de vehículos que hay para los distintos valores de la variable mtcars$cyl.
#Establece un color para cada una de las barras.
#Añade al gráfico un título y un subtitulo.

barplot(facCyl)
help("barplot")

mtcars
facCyl=factor(mtcars$cyl)

plot(facCyl)



#Haciendo uso de los datasets mdeaths, ldeaths y fdeaths, realiza un gráfico donde:
  
#Los 3 conjuntos de datos deben quedar representados como un gráfico de líneas.
#El eje y debe quedar limitado al máximo y el mínimo de los valores.
#Las líneas de mdeaths serán continuas mientras que la de ldeaths y fdeaths serán discontinuas.
#Las líneas de fdeaths deben ser más anchas que las otras dos.
#Las tres líneas deben tener colores distintos, quedando claro cual es cada una en una leyenda.
#Por último, cambia el nombre a los ejes x e y.

minTotal=min(ldeaths)
minMale=min(mdeaths)
minFame=min(fdeaths)

maxTotal=max(ldeaths)
maxMale=max(mdeaths)
maxFame=max(fdeaths)

minDeath = min(minTotal,minFame,minMale)
maxDeath = max(maxTotal,maxFame,maxMale)

plot(ldeaths,type="l", ylim = c(minDeath-100,maxDeath+1000),lty=2, col="red",xlab = "Tiempo", ylab = "muertes")
lines(mdeaths,col="blue")
lines(fdeaths,col="green", lty=2, lwd = 2)

legend(1976,5000,legend = c("ldeaths","mdeaths","fdeaths"),lty=c(2,1,2),lwd = c(1,1,2),col = c("red","blue","green"), border = "black")


#.Haciendo uso del dataset precip:
  
#Filtra el dataset quedándote únicamente con los primeros 5 valores.
#Crea un gráfico donde aparezca el nombre de cada ciudad en lugar del valor.
#Dibuja aquellos nombres cuyo valor sea menor a 20 de color rojo y en cursiva.
#Dibuja aquellos nombres cuyo valor sea mayor a 20 de color azul y en negrita.

precip

prec= precip[1:5]

precMin=prec[prec<20]
precMax=prec[prec>=20]

plot(prec, type = "n")

text(c(1:length(precMin)),precMin,names(precMin), font = 3,col = "red")
text(length(precMin)+1:length(precMax),precMax,names(precMax), font = 2,col="blue")

