# Ejercicio 6 - Introducción a ggplot2

# Juana Adriana Ascencio Escamilla
# Ejercicio 1. Fundamentos de ggplot2
library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)
p <- murders %>% ggplot()
class(p)

# Juana Adriana Ascencio Escamilla
# Ejercicio 2. Impresión
library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)
p <- murders %>% ggplot()
p

# Juana Adriana Ascencio Escamilla
# Ejercicio 3. Pipes
library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)
p <- heights %>% ggplot()

# Juana Adriana Ascencio Escamilla
# Ejercicio 4. Capas
library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)
head(murders)

# Juana Adriana Ascencio Escamilla
# Ejercicio 5. geom_point 1
library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)
murders %>% ggplot(aes(x = population, y = total)) +
  geom_point()

# Juana Adriana Ascencio Escamilla
# Ejercicio 6. geom_point 2
library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)
murders %>% ggplot(aes(total, population)) +
  geom_point()

# Juana Adriana Ascencio Escamilla
# Ejercicio 7. geom_point text
library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)
murders %>% ggplot(aes(population, total)) +
  geom_label()

# Juana Adriana Ascencio Escamilla
# Ejercicio 8. geom_point text
library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)
murders %>% ggplot(aes(population, total, label = abb)) +
  geom_label()

# Juana Adriana Ascencio Escamilla
# Ejercicio 9. geom_point color
library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)
murders %>% ggplot(aes(population, total, label = abb)) +
  geom_label(color = "blue")

# Juana Adriana Ascencio Escamilla
# Ejercicio 10. geom_point colors 2
library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)
murders %>% ggplot(aes(population, total, label = abb)) +
  geom_label(color = "blue")

# Juana Adriana Ascencio Escamilla
# Ejercicio 11. geom_labels by region
library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)
murders %>% ggplot(aes(population, total, label = abb, color = region)) +
  geom_label()

# Juana Adriana Ascencio Escamilla
# Ejercicio 12. geom_label colors
library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)
murders %>% ggplot(aes(population, total, label = abb, color = region)) +
  geom_label()

# Juana Adriana Ascencio Escamilla
# Ejercicio 13. Log-scale
library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)
p <- murders %>% ggplot(aes(population, total, label = abb, color = region)) +
  geom_label()
p + scale_x_log10() + scale_y_log10()

# Juana Adriana Ascencio Escamilla
# Ejercicio 14. Títulos
library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)
p <- murders %>% ggplot(aes(population, total, label = abb, color = region)) +
  geom_label()
p + scale_x_log10() + scale_y_log10() + ggtitle("Gun murder data")

# Juana Adriana Ascencio Escamilla
# Ejercicio 15. Histogramas
library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)
head(heights)

# Juana Adriana Ascencio Escamilla
# Ejercicio 16. Un segundo ejemplo
library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)
p <- heights %>% ggplot(aes(height)) 

# Juana Adriana Ascencio Escamilla
# Ejercicio 17. Histogramas 2
library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)
p <- heights %>% ggplot(aes(height)) 
p + geom_histogram()

# Juana Adriana Ascencio Escamilla
# Ejercicio 18. Ancho de Bins del Histograma
library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)
p <- heights %>% ggplot(aes(height)) 
p + geom_histogram(binwidth = 1)

# Juana Adriana Ascencio Escamilla
# Ejercicio 19. Gráfico de Densidad Suavizada
library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)
heights %>% ggplot(aes(height)) + 
  geom_density()

# Juana Adriana Ascencio Escamilla
# Ejercicio 20. Dos gráficos de Densidad Suavizada
library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)
heights %>% ggplot(aes(height, group = sex)) + 
  geom_density()

# Juana Adriana Ascencio Escamilla
# Ejercicio 21. Dos gráficos de Densidad Suavizada 2
library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)
heights %>% ggplot(aes(height, color = sex)) + 
  geom_density()

# Juana Adriana Ascencio Escamilla
# Ejercicio 22. Dos gráficos de Densidad Suavizada 3
library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)
heights %>% ggplot(aes(height, fill = sex)) + 
  geom_density(alpha = 0.2)
