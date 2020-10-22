#Haciendo uso del conjunto de datos car90
#Filtra los datos para quedarnos unicamente con las variables Front.Hd, Frt.Leg.Room, Frt.Shld,Rear.HD, Rear.Shld y Type
#Realiza un breve preprocesamiento para eliminar los casos no completos.
#Crea un arbol de decision para predecir la variable Type segun los valores del resto de variables.
#Pinta el arbol creado.
#¿Que resultados obtenemos?¿Puede mejorar con otras variables?


car90
names(car90)
car = car90[,c(5,6,7,18,20,31)]
car
library(rpart)

car = car[complete.cases(car),]
#Clasificacion test
set.seed(1234)
ind=sample(2,nrow(car), replace = TRUE, prob = c(0.7,0.3))
ind
train=car[ind==1,]
test=car[ind==2,]
nrow(train)
nrow(test)

#Creamos el modelo/arbol
form = Type ~ Front.Hd + Frt.Leg.Room +  Frt.Shld + Rear.Hd + RearShld 
form
arbCar = rpart(form, data=train)
arbCar
plot(arbCar)
text(arbCar , use.n = TRUE)
#Comprobamos resultados
carTest=predict(arbCar, newdata=test, type="class")
carTest
tablaCar=table(carTest,test$Type)
diag(tablaCar)
nrow(test)
sum(diag(tablaCar))/nrow(test)


#Con el DataFrame stagec
#Realiza un breve preprocesamiento de los datos para eliminar duplicados y crea una nueva variable nivel, de tipo factor con los valores de la variable grade
#Intenta predecir el valor de la variable nivel en funcion de otras variables usando el metodo de randomforest. Realiza varias preuebas con distintas variables involucradasen la formula.
#¿Que porcentaje de acierto obtenemos ?
library(randomForest)
stagec
help("stagec")
str(stagec)
nrow(stagec)
nrow(na.omit(stagec))

c=na.omit(stagec)
c

grad = c$grade
nivel =factor(grad)
nivel
c$nivel=nivel
#Clasificacion test
ind=sample(2,nrow(c), replace = TRUE, prob = c(0.7,0.3))
ind
trainC=c[ind==1,]
testC=c[ind==2,]
nrow(trainC)
nrow(testC)

#Creamos el modelo/forest
formu = nivel ~ g2 + ploidy + eet
arbolC=randomForest(formu, data=trainC, ntree=100, proximity=T)
plot(arbolC)
#comprobamso variables mas importantes
importance(arbolC)
varImpPlot(arbolC)
#Comprobamos resultados
pred = predict(arbolC,newdata=testC)
pred
tablaC=table(pred,testC$nivel)
aciertos = sum(diag(tablaC)) / nrow(testC)
aciertos


#Usando el mismo conjunto de datos anterior , realiza la prediccion usando ahora el algoritmo J48 de la libreria RWeka 
#y compara los resultados con el ejercicio anterior
library(RWeka)
library(partykit)
stagec
help("stagec")

nrow(stagec)
nrow(na.omit(stagec))

c=na.omit(stagec)
c

grad = c$grade
nivel =factor(grad)
c$nivel=nivel
#Clasificacion test
ind=sample(2,nrow(c), replace = TRUE, prob = c(0.7,0.3))
ind
trainC=c[ind==1,]
testC=c[ind==2,]
nrow(trainC)
nrow(testC)
#Creamos el modelo/J48
formu = nivel ~ g2 + ploidy + eet
JC=J48(formu, data=trainC)
JC
plot(JC)
#Comprobamos resultados
predJ48 = predict(JC,testC)
predJ48
tablaCJ48=table(predJ48,testC$nivel)
aciertos = sum(diag(tablaCJ48)) / nrow(testC)
aciertos

#Usando el conjunto de datos women, aplica el metodo de linear regression para predecir los valores de la variable height.
#Dibuja previamente los datos y justifica si este metodo puuede dar buenos resultados o no.
str(women)
women
help("women")
#Clasificacion test
ind=sample(2,nrow(women), replace = TRUE, prob = c(0.7,0.3))
ind
trainWomen=women[ind==1,]
testWomen=women[ind==2,]
nrow(trainWomen)
nrow(testWomen)
#Creamos linea de regresion
lineaWomen=lm(height ~ weight, data=trainWomen)
lineaWomen
plot(lineaWomen)
plot(women$height~women$weight)
summary(lineaWomen)
#Comprobamos resultados
predWomen = predict(lineaWomen,testWomen)
predWomen
tablaWomen=table(predWomen,testWomen$height)
aciertos = sum(diag(tablaWomen)) / nrow(testWomen)
aciertos
tablaWomen

#Haciendo uso del dataset ChickWeight, utiliza el algoritmo M5P de la libreria RWeka para predecir el valor de la varieable Time.
#Usa las variables que consideres convenientes
library(partykit)
library(RWeka)
library(rJava)
str(ChickWeight)
ChickWeight
help("ChickWeight")


#Clasificacion test
ind=sample(2,nrow(ChickWeight), replace = TRUE, prob = c(0.7,0.3))
ind
trainDiet=ChickWeight[ind==1,]
testDiet=ChickWeight[ind==2,]
nrow(trainDiet)
nrow(testDiet)
#Creamos modelo M5P
DietM5P=M5P(Time ~ weight + Chick + Diet , data=trainDiet)
DietM5P
plot(DietM5P)
#Comprobamos resultados
predDiet = predict(DietM5P,testDiet)
predDiet
tablaDiet=table(predDiet,testDiet$Time)
aciertos = sum(diag(tablaDiet)) / nrow(testDiet)
aciertos
tablaDiet
#Calculamos error
error= abs(predDiet+testDiet$Time)
error
sqrt(sum(error^2))

hist(123)
title(klk)
main(klksgfsad)
