library(tidyverse)
library(readxl)

gap <- read_excel("datos/gap.xlsx")
# ver dataframe
View(gap)
# ver datos y formato 
str(gap)
# primeros y ultimos datos
head(gap, 20)
tail(gap, 20)

# 
names(gap)
# contar filas y columnas
ncol(gap)
nrow(gap)

# Clase 2

#tipos de datos  ####
poleras <- c(254, 203, 182, 50)
class(poleras)
typeof(poleras)

meses <- c("Ene", "Feb", "Mar", "Abr")
class(meses)
typeof(meses)

poleras_int <- c(254L, 203L, 182L, 50L)
class(poleras_int)
typeof(poleras_int)

precio_poleras <- c(20.9, 21.5, 15.99, 25)
class(precio_poleras)
typeof(precio_poleras)
# asignación basada en filtro 
stock <- poleras >= 250
stock
class(stock)
typeof(stock)

# cuando hay letras y numeros el vector se convierte al tipo string
vector <- c(3, 7, 25, "dos")
typeof(vector)
class(vector)

# crear un vector con numeros del 1 al 50 
v1 <- 1:50
length(v1)
v1 <- seq(from = 1, to = 50)
v1

# crear un vector del 0 al 50 pero que itere por 0.5
v2 <- seq(from = 0, to = 50, by = 0.5 )
v2
length(v2)

# crear un vector con las letras de la A a la Z 
letters
LETTERS

# acceder a elementos del vector[]
letters[1:10]
# imprimir ultimos elementos
letters[-c(1:10)]
# eliminar un caracter en específico
letters[-8]

head(letters)
tail(letters, 15)

length(letters)/ 2

# obtener un elemento 
which (letters == 'j')

# crear un vector que repita 100 veces el rep 
v3 <- rep(3, times  = 100)

# repita 100 veces la secuencia 
v4 <- rep(c(1, 2, 3), times = 100)

# crear un vector que repita 10 veces los nombres de los ayudantes
v5 = rep(c("Claudio", "Hernán", "Paula"), times = 5)
v5

# crear un vector que repita 10 veces cada nombre de los ayudantes 
a1 <- rep("Claudio", 10)
a2 <- rep("Hernán", 10)
a3 <- rep("Paula", 10)
ayudantes <- c(a1, a2, a3)
ayudantes 


#Matrices 
# debe tener el mismo tipo de datos 
data_poleras <- cbind(meses, poleras)
class(data_poleras)

data_poleras[4,2]
#todos los valores de la primera fila
data_poleras[1,]
#todos los valores de la primera columna
data_poleras[,1]

# matrix(vector, ncol, nrow, byrow = FALSE)
matrix(1:9,ncol=3)

#by row true
matrix(1:9, ncol = 3, byrow = TRUE)

#concatenar vectores, el resultado es una matriz 
rbind(meses,poleras)


## Data Frame
# esctructura de datos bidimensional que soporta varios tipos de datos 
poleras_df <- data.frame(meses,poleras)
poleras_df
str(poleras_df)
poleras_df$poleras
poleras_df[,2]
names(poleras_df)
dim (poleras_df)
poleras_df$poleras

mean(poleras_df$poleras)

# otra forma de acceder a los elementos [[]]
poleras_df[["meses"]]
poleras_df[1:3,1]
poleras_df[c(1,4),2]
is.data.frame(poleras_df) # verificar si es un dataframe
is.data.frame(data_poleras)
poleras_df2 <- data.frame(meses = c("Ene", "Feb", "Mar", "Abr"),poleras = c (254, 203, 182, 50))
poleras_df2

# Tibbles -----------------------------------------------------------------
poleras_tbl <- tibble(meses,poleras)
poleras_tbl
poleras_tbl <- as_tibble(poleras_df)
names(poleras_tbl)
poleras_tbl$meses
poleras_tbl[["poleras"]]
poleras[1,1:3]    # error
poleras_df(1,1:3) # error


#Agregar filas
poleras_tbl <- add_row(poleras_tbl, meses= c("Jun", "Jul"), poleras = c(268, 320))
poleras_tbl 

# Agregar objeto intermedio 
poleras_tbl <- add_row(poleras_tbl, meses = "May", poleras = 150, .before = 5)
poleras_tbl

# hacer lo mismo usando [] y/o pensar otra forma de hacerlo

# agregar una columna 

poleras_tbl <- add_column(poleras_tbl, precio  = c(precio_poleras, 19, 17, NA))
poleras_tbl
# calcular con NA
mean(poleras_tbl$precio)
mean(poleras_tbl$precio, na.rm = TRUE)

#quitar filas donde los datos sean NA 
poleras_tbl_sin_na <- na.omit(poleras_tbl)
poleras_tbl_sin_na
mean(poleras_tbl_sin_na$precio)

class(gap)
gap

# Listas ------------------------------------------------------------------
mi_lista <- list(datos_gap = gap, 
                 datos_poleras = poleras_tbl_sin_na, 
                 vector = v4, 
                 numero = 3)
mi_lista
# acceder a elementos 
mi_lista[["datos_gap"]][4,]
mi_lista[["datos_gap"]][,1:4]
mi_lista[["datos_gap"]][,c(1,5)]
mi_lista[["datos_gap"]][,c("year","lifeExp")]

mi_lista$datos_gap
mi_lista[[3]]

# operadores lògicos


# Operadores Lógicos ------------------------------------------------------
10>5
"Gato" == "gato"
c("a","B","c") %in% letters
c("a", "B", "c") %in% LETTERS

table(gap$year)
dat_chile <- gap[gap$country %in% c("Chile", "Ecuador") ,]
dat_chile
class(dat_chile)
mean(dat_chile$lifeExp)
data_2 <- gap[gap$country %in% c("Chile", "Ecuador") ,]
head(data_2)
data_promedio <- gap %>% filter(country %in% c("Chile", "Ecuador")) %>%
  group_by(country) %>% summarise(Promedio = mean(lifeExp))
data_promedio 
gap

 

