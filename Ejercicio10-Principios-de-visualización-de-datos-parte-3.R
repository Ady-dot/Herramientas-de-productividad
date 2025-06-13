# Ejercicio 10 - Principios de visualización de datos - parte 3

# Juana Adriana Ascencio Escamilla
# Ejercicio 1. Personalización de gráficos - observar y aprender
library(dplyr)
library(ggplot2)
library(dslabs)
data(us_contagious_diseases)
dat <- us_contagious_diseases |>
  filter(year == 1967 & disease=="Measles" & !is.na(population)) |>
  mutate(rate = count/ population * 10000 * 52/ weeks_reporting)
dat |> ggplot(aes(state, rate)) +
  geom_bar(stat="identity") +
  coord_flip()

# Redefine el objeto estado de modo que los niveles se reordenen por tasa
dat <- dat |>
  mutate(state = reorder(state, rate))
# Imprime el nuevo objeto estado
head(dat$state)
# Imprime sus niveles (usando levels)
levels(dat$state)

# Juana Adriana Ascencio Escamilla
# Ejercicio 2. Personalización de gráficos - redefiniendo
library(dplyr)
library(ggplot2)
library(dslabs)
data(us_contagious_diseases)
dat <- us_contagious_diseases |>
  filter(year == 1967 & disease == "Measles" & !is.na(population)) |>
  mutate(
    tasa = count / population * 10000 * 52 / weeks_reporting,
    state = reorder(state, tasa)
  )
dat |> ggplot(aes(state, tasa)) +
  geom_bar(stat="identity") +
  coord_flip()

# Juana Adriana Ascencio Escamilla
# Ejercicio 3. Mostrando los datos y personalizando gráficos
library(dplyr)
library(ggplot2)
library(dslabs)
data("murders")
murders %>% mutate(rate = total/population*100000) %>%
  group_by(region) %>%
  summarize(avg = mean(rate)) %>%
  mutate(region = factor(region)) %>%
  ggplot(aes(region, avg)) +
  geom_bar(stat="identity") +
  ylab("Murder Rate Average")

# Juana Adriana Ascencio Escamilla
# Ejercicio 4. Haciendo un gráfico de caja
library(dplyr)
library(ggplot2)
library(dslabs)
data("murders")
murders |> 
  mutate(rate = total/population*100000,
         region = reorder(region, rate)) |>
  ggplot(aes(region, rate, color = region)) +
  geom_boxplot() +
  geom_point(position = position_jitter(width = 0.1), alpha = 0.7, size = 1.5)