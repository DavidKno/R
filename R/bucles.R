#pedir numero por teclado y saber si es primo o no

primo = readline(prompt = "Numero primo:")
11

primo= as.integer(primo)

i=0
cont =0

while (i< primo){
  i = i+1
  res = primo%%i
  
  if (res==0){
    cont = cont + 1
  }
  print(res)
  

}
if (cont == 2 || primo == 1){
  print ("El numero es primo")
}else{
  print ("El numero No es primo")
}


#Calcula la suma de los numeros del 2 al 100 q sean multiplos de 3.Usa reapeat.

i=1
cont=0
repeat{
  i= i+1
  if (i%%3 == 0){
    cont=cont+i
  }
  if(i==100)break

}
print(cont)

#programa un reloj, recibiendo por consola el numero de horas y minutos comience la cuenta atras hasta 00:00h

hora = as.integer(readline(prompt = "Hora"))
12

min = as.integer(readline(prompt = "Minutos"))
50

repeat{
  
  if(min == 0){
    hora = hora-1
    min = 59
  }else{
    min = min-1
  }
  reloj=paste(hora,min,sep = ":")
  print(reloj)
  
  if (hora == 0 && min == 0)break
  
}
  
