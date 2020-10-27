#Trabajar con la matriz de datos "millas"
millas<-(datos::millas)

#explorar la matriz de datos millas
names(millas)
dim(millas)
str(millas)
typeof(millas)
View(millas)

#convertir a data frame
millas_1<-as.data.frame(millas)

#estadisticos descriptivos
summary(millas_1)

#calcular moda, instalar paquete modeest y abrir libreria
install.packages("modeest")
library(modeest)

mfv(millas_1$fabricante)
mfv(millas_1$modelo)
mfv(millas_1$cilindrada)
mfv(millas_1$anio)
mfv(millas_1$cilindros)
mfv(millas_1$transmision)
mfv(millas_1$traccion)
mfv(millas_1$ciudad)
mfv(millas_1$autopista)
mfv(millas_1$combustible)
mfv(millas_1$clase)

#Calcular la varianza  de cada una de las variables cuantitativas
var(millas_1$cilindrada)
var(millas_1$anio)
var(millas_1$cilindros)
var(millas_1$ciudad)
var(millas_1$autopista)

#calcular la desviación estandar para cada una de las variables cuantitativas
sd(millas_1$cilindrada)
sd(millas_1$anio)
sd(millas_1$cilindros)
sd(millas_1$ciudad)
sd(millas_1$autopista)

#coeficiente de variacion 
#instalar paquete FinCal y abrir libreria
install.packages("FinCal")
library(FinCal)

#Calcular el coeficiente de variacion
coefficient.variation(sd=sd(millas_1$cilindrada),
                      avg = mean(millas_1$cilindrada))
coefficient.variation(sd=sd(millas_1$anio),
                      avg = mean(millas_1$anio))
coefficient.variation(sd=sd(millas_1$cilindros),
                      avg = mean(millas_1$anio))
coefficient.variation(sd=sd(millas_1$ciudad),
                      avg = mean(millas_1$ciudad))
coefficient.variation(sd=sd(millas_1$autopista),
                      avg = mean(millas_1$autopista))

#Construccion de graficos
install.packages("tidyverse")
library(tidyverse)
install.packages("RColorBrewer")
library(RColorBrewer)

#dispersion con variable cilindrada y autopista
dispersion_1<-ggplot(millas_1, aes(x=cilindrada, y=autopista, color=clase))+
  geom_point()

#visualizar el grafico
dispersion_1

#grafica de caja con las variables de transmision y ciudad
boxplot<-ggplot(millas_1,aes(factor(transmision),
                              ciudad,fill=transmision))+
  geom_boxplot()+
  ggtitle("Transmision de autos en ciudad")+
  xlab("transmision")+
  ylab("ciudad")

#visualizar el grafico
boxplot

#grafico de barras para la variable cilindros
#construir la tabla
attach(millas_1)
tabla_cilindros<-table(millas_1$cilindros)

#visualizar la variable x que contiene la columna
tabla_cilindros

# colores a utilizar
color=c("darkolivegreen","cyan3","burlywood","darkorchid1")

#construir la grafica
barplot(tabla_cilindros,xlab = "cilindros",ylab = "frecuencias",
        main = "Grafico de barras cilindros", col = color)


        
        




