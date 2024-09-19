#Codigo para problema 3

#c me permite crear un vector
x<- c(-8,5,2,-8,9,5,2,-3,1,-1,4,-4,9,3,-9,7,0,-7,8,-4,1,7,-6,4,5,-9,-2,-8,5,-5)

#apartado2
x
y<- x[-c(21,2,26)]

sum(exp(x))-sum(exp(y))

#resultado= 151.1316

#apartado3 = FALSO
y[19]
y[24]
