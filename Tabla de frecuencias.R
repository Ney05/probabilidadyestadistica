#Tema: Tablas de Frecuencia

#1.- Leer la matriz de datos 
data(iris)

#2.- Explorar la matriz de datos
names(iris)

#3.- Explorar la dimension de la matriz
dim(iris)

#4.- Tipos de variables 
str(iris)

#5.- Detectar si hay valores perdidos
anyNA(iris)

#6.- Visualizar las especies variables de la matriz iris
iris$Species
iris$Sepal.Length

#7.- Revisar el tipo de matriz de datos
typeof(iris)

#8.- Convertir la matriz de datos a una data frame y despues
    #Agrupar los valores para la variable petalo
    #Se calcula la frecuencia absoluta
tabla_PL<-as.data.frame(table(PL=iris$Petal.Length))
                              
#9.- Mostrar la tabla de contingencia para la variable PL 
     #Con su respectiva frecuencia
tabla_PL

#10.- Se construye la tabla de frecuencias completas redondeando las 
      #frecuencias absolutas a 3 decimales
transform(tabla_PL,freqAc=cumsum(Freq),Rel=round(prop.table(Freq),
                                                3),RelAc=round(cumsum(prop.table(Freq)),3))
          
#11.- Agrupar las variables en 10 clases y se calcula la frecuencia absoluta
tabla_clases<-as.data.frame(table(Petal.length=factor(cut(iris$Petal.Length,breaks = 9))))

#12.- Visualizar la tabla de clases
tabla_clases

#13.- Contribución de la tabla de frecuencias completa redondeando las
      #frecuencias relativas a 3 decimales
transform(tabla_clases,freqAc=cumsum(Freq),Rel=round(prop.table(Freq),
                                                     3),RelAc=round(cumsum(prop.table(Freq)),3))


