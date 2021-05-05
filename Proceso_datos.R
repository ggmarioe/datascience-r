install.packages("tidyverse")
library("ggplot2")
library("readxl")
library(tidyverse)

poleras <- c(254, 203, 182, 50)
meses <- c("Ene", "Feb", "Mar", "Abr")
min(poleras)
plot(poleras)
barplot(poleras, names.arg = meses , col="orange")

data_poleras <- cbind(meses,poleras)
write.csv(data_poleras, "datos/poleras.csv")
datos_archivo <- read.csv("datos/poleras.csv")
datos_archivo

gap <- read_excel("datos/gap.xlsx")
gap