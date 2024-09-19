#Codigo para problema 1

mis_dades <- mtcars
#la flecha me permite crear intervalos

mis_dades$qsec
# $ me permite extraer un grupo de valores

sort(mis_dades$qsec)
#sort me permite ordenar de mayor a menor

cut(mis_dades$qsec,breaks=4)
#divido los datos en 4 grupos

qsec_intervalos <- cut(mis_dades$qsec,breaks=4)
qsec_intervalos

#tabla de frecuencias
sum(table(qsec_intervalos))
# el sum lo pongo para saber el total de datos que tengo y poder hacer la proporcion

ni <- (table(qsec_intervalos))
ni
sum(ni)
fi <- ni/sum(ni)
fi
pie(fi) #es un gráfico de sectores de la frecuencia relativa en función de las observaciones, los resultados

ni <- table(qsec_intervalos)
fi <- ni/sum(ni)#frecuencia
Ni <- cumsum(ni)
Fi <- cumsum(fi) #frecuencia acomulada

cbind(ni, fi, Ni, Fi) #para crear la tabla
  

hist(mis_dades$qsec,breaks=4)
#gráfico de barras 

mean(mis_dades$qsec)
#me calcula el promedio= 17.84875 (valor que me pide el ejercicio)

mis_dades$drat
sort(mis_dades$drat)
median(mis_dades$drat) #mediana: el dato que esté en medio (3.695 valor que me pide el ejercicio)

#quantile me permite cortar un grupo de datos por donde yo quiera
quantile(mis_dades$drat, 0.25) #es el primer cuarto/cuartil de los datos (1/4) (3.08 valor que me pide el ejercicio )
quantile(mis_dades$mpg, 0.18)#cortamos los datos al 18% (15.116 valor que me pide el ejercicio)


#rango intercuartilico
quantile(mis_dades$cyl, 0.75) #lo corto a 3/4 
quantile(mis_dades$cyl, 0.25) #lo corto a 1/4
#hago la diferencia entre los dos:
quantile(mis_dades$cyl, 0.75)-quantile(mis_dades$cyl, 0.25) #(4 valor que me pide el ejercicio)

#que tan dispersos son los datos al rededor de la media= desviación típica
sd(mis_dades$cyl) #(me lo pide el ejercicio= 1.785922)

#la varianza
var(mis_dades$qsec) #(me lo pide el ejercicio= 3.193166)
