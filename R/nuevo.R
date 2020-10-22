library(plotly)


datos =women
datos$height[1]= NA
datos

mean(datos)
complete.cases(datos)
help("complete.cases")
datos[complete.cases(datos),]


airquality




nilo = Nile[1:10]
nilo
[1] 1120 1160  963 1210 1160 1160  813 1230 1370 1140
plot(nilo, type = "o")




m5modelAir = M5P(Temp ~ Wind + Ozone , data = trainAir)
predM5Air = predict(m5modelAir, newdata = testAir)

plot_ly(mtcars, x = ~wt, y = ~hp, z = ~qsec) %>% add_markers()

plot(airquality)
pairs(airquality)

coplot(airquality)

unclass(as.Date("1971-01-01"))

indat<-c("Ash Rd","Ash Cir","Ash St")
grepl("Rd,Ave,Dr,St",)
height<-c(25,18,40,45,35)

help(glm)
quantile(is.na(aurquality$week))
pizza
ls(pat="V")

x = c(12L,6L,7L)
median(x)
v=1:3
names(v)=c("a","b","c")
v[4]=4
names(v)
