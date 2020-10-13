#1.- Leer la matriz de datos
data(cars)

#2.- Explorar la matriz de datos
names(cars)

#3.- Explorar la dimensión de la matriz
dim(cars)

#4.- Identificar los tipos de variables
str(cars)

#5.- Detectar valores perdidos
anyNA(cars)

#6.- Explorar una variable
cars$speed
cars$dist

#7.- Revisar el tipo de matriz de datos
typeof(cars)

#8.- Convertir la matriz de datos a una data frame y despues agrupar los valores 
     #para la variable y se calcula la frecuencia absoluta
tabla_PL<-as.data.frame(table(PL=cars$speed))
tabla_PL<-as.data.frame(table(PL=cars$dist))

#9.- Mostrar la tabla de contingencia para la variable PL con su respectiva frecuencia
tabla_PL

#10.- Se construye la tabla de frecuencias completa redondeando las frecuencias
      #absolutas a 3 decimales
transform(tabla_PL,freqAc=cumsum(Freq),Rel=round(prop.table(Freq),
                                                3),RelAc=round(cumsum(prop.table(Freq)),3))

#11.- Agrupar las variables en 10 clases y se calcula la frecuencia absoluta
tabla_clases<-as.data.frame(table(Speed=factor(cut(cars$speed,breaks = 9 ))))

#12.- Visualizar la tabla de clases 
tabla_clases

#13.- Coontribución de la tabla de frecuencias completa redondeando las 
      #frecuencias relativas a 3 decimales 
transform(tabla_clases,freqAc=cumsum(Freq),Rel=round(prop.table(Freq),
                                                    3),RelAc=round(cumsum(prop.table(Freq)),3))