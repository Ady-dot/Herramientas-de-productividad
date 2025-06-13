# Ejercicio 4 - Cuantiles, percentiles y diagramas de caja

# Juana Adriana Ascencio Escamilla
# Ejercicio 1. Longitudes de vectores
library(dslabs)
data(heights)
male <- heights$height[heights$sex == "Male"]
female <- heights$height[heights$sex == "Female"]
length(male)
length(female)

# Juana Adriana Ascencio Escamilla
# Ejercicio 2. Percentiles
female_percentiles <- quantile(female, seq(0.1, 0.9, 0.2))
male_percentiles <- quantile(male, seq(0.1, 0.9, 0.2))
df <- data.frame(female = female_percentiles, male = male_percentiles)
df
