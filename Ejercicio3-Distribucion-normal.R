# Ejercicio 3 - Distribución normal

# Juana Adriana Ascencio Escamilla
# Ejercicio 1. Proporciones
library(dslabs)
data(heights)
x <- heights$height[heights$sex == "Male"]
mean(x > 69 & x<=72)

# Juana Adriana Ascencio Escamilla
# Ejercicio 2. Distribuciones promedio y estándar
avg <- mean(x)
stdev <- sd(x)
pnorm(72, avg, stdev) - pnorm(69, avg, stdev)

# Juana Adriana Ascencio Escamilla
# Ejercicio 3. Aproximaciones
real <- mean(x > 79 & x <= 81)
real
approx <- pnorm(81, avg, stdev) - pnorm(79, avg, stdev)
approx
real/approx

# Juana Adriana Ascencio Escamilla
# Ejercicio 4. Jugadores de siete pies y la NBA
1 - pnorm(7*12, 69, 3)

# Juana Adriana Ascencio Escamilla
# Ejercicio 5. Estimación del número de jugadores de siete pies
p <- 1 - pnorm(7*12, 69, 3)
round(p*10^9)

# Juana Adriana Ascencio Escamilla
# Ejercicio 6. ¿Cuántos jugadores de siete pies hay en la NBA?
p <- 1 - pnorm(7*12, 69, 3)
N <- round(p*10^9)
10/N

# Juana Adriana Ascencio Escamilla
# Ejercicio 7. Altura de Lebron James
p <- pnorm(6*12 + 8, 69, 3)
N <- round(p*10^9)
150/N

