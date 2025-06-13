# Ejercicio 7 - Explorando el conjunto de datos de Gapminder

# Juana Adriana Ascencio Escamilla
# Ejercicio 1. Centro Nacional de Estadísticas de Salud
library(NHANES)
data(NHANES)
library(dslabs)
data(na_example)
mean(na_example)
sd(na_example)
mean(na_example, na.rm = T)
sd(na_example, na.rm = T)

# Juana Adriana Ascencio Escamilla
# Ejercicio 2. Presión arterial 1
library(dplyr)
library(NHANES)
data(NHANES)
head(NHANES)
tab <- NHANES |> 
  filter(Gender == "female" & AgeDecade == " 20-29")

# Juana Adriana Ascencio Escamilla
# Ejercicio 3. Presión arterial 2
library(dplyr)
library(NHANES)
data(NHANES)
ref <- NHANES |> 
  filter(Gender == "female" & AgeDecade == " 20-29") |>
  summarise(
    average = mean(BPSysAve, na.rm = T),
    standard_deviation = sd(BPSysAve, na.rm = T)
    )
ref

# Juana Adriana Ascencio Escamilla
# Ejercicio 4. Resumiendo promedios
library(dplyr)
library(NHANES)
data(NHANES)
ref_avg <- NHANES |> 
  filter(Gender == "female" & AgeDecade == " 20-29") |>
  summarise(average = mean(BPSysAve, na.rm = T)) |>
  pull()
ref_avg

# Juana Adriana Ascencio Escamilla
# Ejercicio 5. Mínimo y máximo
library(dplyr)
library(NHANES)
data(NHANES)
NHANES |> 
  filter(Gender == "female" & AgeDecade == " 20-29") |>
  summarise(
    minbp = min(BPSysAve, na.rm = T),
    maxbp = max(BPSysAve, na.rm = T)
  )

# Juana Adriana Ascencio Escamilla
# Ejercicio 6. group_by
library(dplyr)
library(NHANES)
data(NHANES)
NHANES |> 
  filter(Gender == "female") |>
  group_by(AgeDecade) |>
  summarise(
    average = mean(BPSysAve, na.rm = T),
    standard_deviation = sd(BPSysAve, na.rm = T)
  )

# Juana Adriana Ascencio Escamilla
# Ejercicio 7. group_by example 2
library(dplyr)
library(NHANES)
data(NHANES)
NHANES |> 
  filter(Gender == "male") |>
  group_by(AgeDecade) |>
  summarise(
    average = mean(BPSysAve, na.rm = T),
    standard_deviation = sd(BPSysAve, na.rm = T)
  )

# Juana Adriana Ascencio Escamilla
# Ejercicio 8. group_by example 3
library(dplyr)
library(NHANES)
data(NHANES)
NHANES |> 
  group_by(AgeDecade, Gender) |>
  summarise(
    average = mean(BPSysAve, na.rm = T),
    standard_deviation = sd(BPSysAve, na.rm = T)
  )

# Juana Adriana Ascencio Escamilla
# Ejercicio 9. Arrange
library(dplyr)
library(NHANES)
data(NHANES)
NHANES |> 
  filter(Gender == "male" & AgeDecade == " 40-49") |>
  group_by(Race1) |>
  summarise(
    average = mean(BPSysAve, na.rm = T),
    standard_deviation = sd(BPSysAve, na.rm = T)
  ) |>
  arrange(average)