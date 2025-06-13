# Ejercicio 1 - Tipos de datos

# Juana Adriana Ascencio Escamilla
# Ejercicio 1. Nombres de variables
library(dslabs)
data(heights)
names(heights)
# Juana Adriana Ascencio Escamilla
# Ejercicio 2. Tipos de variables
head(heights)
#Respuesta correcta - Opción 2: Categórica
# Juana Adriana Ascencio Escamilla
# Ejercicio 3. Valores numéricos
x <- heights$height
length(unique(x))
# Juana Adriana Ascencio Escamilla
# Ejercicio 4. Tablas
tab <- table(x)
tab
# Juana Adriana Ascencio Escamilla
# Ejercicio 5. Indicadores de variables
sum(tab == 1)
# Ejercicio 6. Tipos de datos - alturas
#Respuesta correcta - Opción 1: Es más efectivo considerar las alturas como 
#numéricas dada la cantidad de valores únicos que observamos y el hecho de que 
#si seguimos recolectando datos se observarán aún más.