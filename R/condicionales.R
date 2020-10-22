#Con las siguientes variables imprime por pantalla la mas larga.

a="Hola"
b="Mundo"
c="Openwebinar"

na=nchar(a)
nb=nchar(b)
nc=nchar(c)

if (na>nb && na>nc){
  print("La variable a es la mas larga")
}else if(nb>na && nb>nc){
  print("La variable b es la mas larga")
}else if(nc>na && nc>nb){
  print("La variable c es la mas larga")
}

#Pedir por pantalla un usuario y contraseña, si coinciden con user y password el login es correcto.

usuario =readline(prompt="Nombre usuario:")
user
usuario

pass =readline(prompt="Contraseña:")
password
pass

if (usuario== "user" && pass == "password"){
  print("Login Correct")
}else{
  print("Login incorrect")
}

#solicitar por pantalla un numero. Si es mayor q 0 mostramos el resultado del numero por 2
#sino le restamos 2


n =readline(prompt="Numero:")
-2
n =as.integer(n)

class(n)

if (n>0){
  res=n*2
  print (res)
}else{
  res=n-2
  print(res)
}


