#Analiza el conjunto de datos airquality. Luego, calcula la temperatura media del 
#conjunto de datos para el mes 7. Realiza el preprocesamiento que creas conveniente.
airquality
help("airquality")

# Comprobamos valores especiales
which(is.infinite(airquality$Ozone) == TRUE)
which(is.infinite(airquality$Solar.R) == TRUE)
which(is.infinite(airquality$Wind) == TRUE)
which(is.infinite(airquality$Temp) == TRUE)
which(is.infinite(airquality$Month) == TRUE)
which(is.infinite(airquality$Day) == TRUE)


datos =airquality[complete.cases(airquality), ]

mean(datos$Temp)

#La librería rpart contiene nuevos datasets. Importa dicha librería y estudia el conjunto de datos car90.
#Realiza el preprocesamiento que creas conveniente.
help("car90")
car90
car90[complete.cases(car90),]
complete.cases(car90)

which(complete.cases(car90)==TRUE)
length(which(complete.cases(car90)==TRUE))
length(car90[,1])

# Podemos eliminar variables que no creamos convenientes
coches=car90[complete.cases(car90$Eng.Rev),]

coches=coches[,-15]
# Buscamos valores especiales
coches =coches[coches$Luggage >= 0,]
coches

# Podemos buscar si existe algun outlier.
boxplot(coches)
boxplot(coches$Price)
mean(coches$Price)
coches=coches[coches$Price<41900,]



#Usando el conjunto de datos attitude.
#Comprende dicho conjunto de datos.
#Realiza, si es necesario, un preprocesamiento.
#Realiza un gráfico de puntos que compare la variable learning (eje x) respecto a raises (eje y).
#Utiliza el algoritmo de Kmeans para aplicar técnicas de clustering sobre representación anterior para 1, 2, 3 y 4 clusters. ¿Cual tienen mejores resultados?
attitude
help("attitude")
help("kmeans")

complete.cases(attitude)
boxplot(attitude)

plot(attitude$raises,attitude$learning)

datos= attitude[,c(4,5)]
datos

#2 Clusters
clus2=kmeans(datos,2)
clus2
clusplot(datos,clus2$cluster,color = TRUE,shade=TRUE)

#3 Clusters
clus3=kmeans(datos,3)
clus3
clusplot(datos,clus3$cluster,color = TRUE,shade=TRUE)

#4 Clusters
clus4=kmeans(datos,4)
clus4
clusplot(datos,clus4$cluster,color = TRUE,shade=TRUE)


Error=NULL
for(i in 2:4){
  Error[i]=sum(kmeans(datos, i)$withinss)
}
na.omit(Error)
plot(2:4,na.omit(Error),type="b",xlab="Nº cluster", ylab="Suma Error")



#Usando el mismo conjunto de datos del Ejercicio 3, aplica la técnica de agrupación jerárquica para realizar la clusterización de los datos.
#De nuevo, utilizar las variables learning (eje x) respecto a raises. 
#Por último, repetir los pasos utilizando todas las variables. ¿Obtenemos la misma clusterización?

attitude
help("attitude")
help("dist")
help("hclust")
help("cutree")

complete.cases(attitude)
boxplot(attitude)

plot(attitude$learning,attitude$raises)

datos= attitude[,c(4,5)]
datos

distancia=dist(datos)
tree=hclust(distancia)

plot(tree,labels = FALSE)

#2 Clusters
tree2=cutree(tree, k =2)
plot(tree,labels = FALSE)
rect.hclust(tree,k=2)

#3Clusters
tree3=cutree(tree, k =3)
plot(tree,labels = FALSE)
rect.hclust(tree,k=3)

#4 Cluster
tree4=cutree(tree, k =4)
plot(tree,labels = FALSE)
rect.hclust(tree,k=4)
#
#todos las variables
#
distanciaTodo=dist(attitude)
treeTodo=hclust(distanciaTodo)

plot(treeTodo,labels = FALSE)
#2 Clusters
treeTodo2=cutree(treeTodo, k =2)
plot(treeTodo,labels = FALSE)
rect.hclust(treeTodo,k=2)

#3Clusters
treeTodo3=cutree(treeTodo, k =3)
plot(treeTodo,labels = FALSE)
rect.hclust(treeTodo,k=3)

#4 Cluster
treeTodo4=cutree(treeTodo, k =4)
plot(treeTodo,labels = FALSE)
rect.hclust(treeTodo,k=4)

