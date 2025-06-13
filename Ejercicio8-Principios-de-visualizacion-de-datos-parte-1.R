# Ejercicio 8 - Principios de visualización de datos - parte 1

# Juana Adriana Ascencio Escamilla
# Ejercicio 1. Esperanza de vida vs fertilidad - parte 1
library(dslabs)
library(dplyr)
library(ggplot2)
data(gapminder)

gapminder |> 
  filter(continent == "Africa", year == 2012) |> 
  ggplot(aes(fertility, life_expectancy)) +
  geom_point(color = "purple", size = 3) +
  theme_bw() +
  labs(title = "Gráfico de dispersión: esperanza de vida vs fertilidad (África, 2012)",
       x = "Fertilidad",
       y = "Esperanza de vida")

# Juana Adriana Ascencio Escamilla
# Ejercicio 2. Esperanza de vida vs fertilidad - parte 2 - coloreando tu gráfico
library(dslabs)
library(dplyr)
library(ggplot2)
data(gapminder)

gapminder |> 
  filter(continent == "Africa", year == 2012) |> 
  ggplot(aes(fertility, life_expectancy, color = region)) +
  geom_point(size = 3) +
  theme_bw() +
  labs(title = "Gráfico de dispersión: esperanza de vida vs fertilidad (África, 2012)",
       x = "Fertilidad",
       y = "Esperanza de vida")

# Juana Adriana Ascencio Escamilla
# Ejercicio 3. Esperanza de vida vs fertilidad - parte 3 - 
# seleccionando país y region
library(dplyr)
library(ggplot2)
data(gapminder)

df <- gapminder |> 
  filter(continent == "Africa", year == 2012,
         life_expectancy >= 70, fertility <= 3) |> 
  select(region, country, life_expectancy, fertility)
df

# Juana Adriana Ascencio Escamilla
# Ejercicio 4.Esperanza de vida y la Guerra de Vietnam - parte 1
library(dplyr)
library(ggplot2)
data(gapminder)
paises <- c("Vietnam", "United States")
years <- c(1960:2010)
tab <- gapminder |> 
  filter(country %in% paises & year %in% years) 
tab

# Juana Adriana Ascencio Escamilla
# Ejercicio 5.Esperanza de vida y la Guerra de Vietnam - parte 2
library(dplyr)
library(ggplot2)
data(gapminder)
paises <- c("Vietnam", "United States")
years <- c(1960:2010)
tab <- gapminder |> 
  filter(country %in% paises & year %in% years) 
p <- tab |> 
  ggplot(aes(year, life_expectancy, color = country)) +
  geom_line() +
  labs(title = "Esperanza de vida por año",
       x = "Año",
       y = "Esperanza de vida",
       color = "País")
p

# Juana Adriana Ascencio Escamilla
# Ejercicio 6. Esperanza de vida en Camboya
library(dplyr)
library(ggplot2)
data(gapminder)
paises <- c("Cambodia")
years <- c(1960:2010)
gapminder |> 
  filter(country %in% paises & year %in% years) |>
  ggplot(aes(year, life_expectancy)) +
  geom_line() +
  labs(title = "Esperanza de vida por año en Camboya",
       x = "Año",
       y = "Esperanza de vida")

# Juana Adriana Ascencio Escamilla
# Ejercicio 7. Dólares por día - parte 1
library(dplyr)
library(ggplot2)
data(gapminder)

daydollars <- gapminder |> 
  mutate(dollars_per_day = gdp/population/365) |>
  filter(!is.na(dollars_per_day), continent == "Africa", year == 2010)

# Juana Adriana Ascencio Escamilla
# Ejercicio 8. Dólares por día - parte 2
library(dplyr)
library(ggplot2)
data(gapminder)

daydollars <- gapminder |> 
  mutate(dollars_per_day = gdp/population/365) |>
  filter(!is.na(dollars_per_day), continent == "Africa", year == 2010)
daydollars |>  
  ggplot(aes(dollars_per_day)) +
  geom_density() +
  scale_x_continuous(trans = "log2") +
  labs(title = "Dolares por día - Africa, 2010",
       x = "Dolares por día",
       y = "Densidad")

# Juana Adriana Ascencio Escamilla
# Ejercicio 9. Dólares por día - parte 3 - múltiples gráficos de densidad
library(dplyr)
library(ggplot2)
data(gapminder)
years <- c(1970, 2010)
daydollars <- gapminder |> 
  mutate(dollars_per_day = gdp/population/365) |>
  filter(!is.na(dollars_per_day), continent == "Africa", year %in% years)
daydollars |>  
  ggplot(aes(dollars_per_day, color = factor(year))) +
  geom_density() +
  scale_x_continuous(trans = "log2") +
  labs(title = "Dolares por día - Africa",
       x = "Dolares por día",
       y = "Densidad") +
  facet_grid(year~.) +
  theme(legend.position = "none")

# Juana Adriana Ascencio Escamilla
# Ejercicio 10. Dólares por día - parte 4 - gráfico de densidad apilado
library(dplyr)
library(ggplot2)
data(gapminder)
years <- c(1970, 2010)
daydollars <- gapminder |> 
  mutate(dollars_per_day = gdp/population/365) |>
  filter(!is.na(dollars_per_day), continent == "Africa", year %in% years)
daydollars |>  
  ggplot(aes(dollars_per_day, fill = region)) +
  geom_density(position = "stack", bw = 0.5) +
  scale_x_continuous(trans = "log2") +
  labs(title = "Dolares por día - Africa",
       x = "Dolares por día",
       y = "Densidad") +
  facet_grid(year~.)

# Juana Adriana Ascencio Escamilla
# Ejercicio 12. Gráfico de dispersión de mortalidad infantil - parte 2 -
# eje logaritmico
library(dplyr)
library(ggplot2)
data(gapminder)
gapminder_Africa_2010 <- gapminder |> 
  mutate(dollars_per_day = gdp/population/365) |>
  filter(!is.na(dollars_per_day), !is.na(infant_mortality), 
         continent == "Africa", year == 2010)
gapminder_Africa_2010 |> 
  ggplot(aes(dollars_per_day, infant_mortality, color = region)) +
  geom_point() +
  labs(title = "Dolares por día vs Mortalidad infantil - Africa, 2010",
       x = "Dolares por día",
       y = "Mortalidad infantil",
       color = "Region") +
  scale_x_continuous(trans = "log2")

# Juana Adriana Ascencio Escamilla
# Ejercicio 13. Gráfico de dispersión de mortalidad infantil - parte 3 -
# añadiendo etiquetas
library(dplyr)
library(ggplot2)
data(gapminder)
gapminder_Africa_2010 <- gapminder |> 
  mutate(dollars_per_day = gdp/population/365) |>
  filter(!is.na(dollars_per_day), !is.na(infant_mortality), 
         continent == "Africa", year == 2010)
gapminder_Africa_2010 |> 
  ggplot(aes(dollars_per_day, infant_mortality, color = region, label = country)) +
  geom_point() +
  geom_text(size = 3) +
  labs(title = "Dolares por día vs Mortalidad infantil - Africa, 2010",
       x = "Dolares por día",
       y = "Mortalidad infantil",
       color = "Region") +
  scale_x_continuous(trans = "log2")

# Juana Adriana Ascencio Escamilla
# Ejercicio 14. Gráfico de dispersión de mortalidad infantil - parte 4 -
# comparación de gráficos de dispersión
library(dplyr)
library(ggplot2)
data(gapminder)
years <- c(1970, 2010)
gapminder_Africa_2010 <- gapminder |> 
  mutate(dollars_per_day = gdp/population/365) |>
  filter(!is.na(dollars_per_day), !is.na(infant_mortality), 
         continent == "Africa", year %in% years)
gapminder_Africa_2010 |> 
  ggplot(aes(dollars_per_day, infant_mortality, color = region, label = country)) +
  geom_text(size = 3) +
  labs(title = "Dolares por día vs Mortalidad infantil - Africa, 2010",
       x = "Dolares por día",
       y = "Mortalidad infantil",
       color = "Region") +
  scale_x_continuous(trans = "log2") +
  facet_grid(year~.)