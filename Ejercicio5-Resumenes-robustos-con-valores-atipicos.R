# Ejercicio 5 - Resúmenes robustos con valores atípicos

# Juana Adriana Ascencio Escamilla
# Ejercicio 1. Explorando el conjunto de datos de Galton: promedio y mediana
library(HistData)
data(Galton)
x <- Galton$child
mean(x)
median(x)

# Juana Adriana Ascencio Escamilla
# Ejercicio 2. Explorando el conjunto de datos de Galton - DE y MAD
sd(x)
mad(x)

# Juana Adriana Ascencio Escamilla
# Ejercicio 3. Impacto del error en el promedio
library(HistData)
data(Galton)
x <- Galton$child
x_with_error <- x
x_with_error[1] <- x_with_error[1]*10
mean(x_with_error)
mean(x)
mean(x_with_error) - mean(x)

# Juana Adriana Ascencio Escamilla
# Ejercicio 4. Impacto del error en la DE
sd(x_with_error)
sd(x)
sd(x_with_error) - sd(x)

# Juana Adriana Ascencio Escamilla
# Ejercicio 5. Impacto del error en la median
median(x_with_error)
median(x)
median(x_with_error) - median(x)

# Juana Adriana Ascencio Escamilla
# Ejercicio 6. Impacto del error en la MAD
mad(x_with_error)
mad(x)
mad(x_with_error) - mad(x)

# Juana Adriana Ascencio Escamilla
# Ejercicio 7. Utilidad del Análisis Exploratorio de Datos (EDA)
boxplot(x_with_error)

# Juana Adriana Ascencio Escamilla
# Ejercicio 8. Utilizando EDA para explorar cambios
library(HistData)
data(Galton)
x <- Galton$child
error_avg <- function(k){
  x[1] <- k
  mean(x)
}
error_avg(10000)
error_avg(-10000)
