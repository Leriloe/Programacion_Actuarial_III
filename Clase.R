#Listas (es como un vector, pero de vectores, y cada uno tiene su propia clase)
x <- list(1, "a", TRUE, 1+4i)
x
#Matrices
m <- matrix(nrow=2, ncol=3)
m
dim(m)
attributes(m)
# Redimensionar matriz
dim(m) <- c(3,2)
m
# Crear matriz con datos
m <- matrix(1:6, 3, 2)
m
m <- matrix(1:6, 3, 2, T)
m
m <- matrix(1:6, 3, 3, T)
m
class(m)
str(m)
dim(m) <- c(2,5)

# -------- Juntar vectores
x <- c(1, 2, 3)
y <- c("a", "b", "c")
z <- c(x, y)
z
#----------
m1 <- rbind(m, x)
m1
m2 <- cbind(m, x)
m2
m1 <- rbind(m, y)
m1
rbind(m1, y)
m2 <- cbind(m, y)
m2
cbind(m2, y)


# Factores

x <- factor(c("si", "no", "si", "si", "no", "si", "no"))
table(x)
unclass(x)
x <- factor(c("si", "no", "si", "si", "no", "si", "no"), levels = c("si", "no"))
x

x <- factor(c("azul", "azul", "rojo", "azul", "amarillo", "verde", "azul"))
x
table(x)


# Valores faltantes

x <- c(1, 2, NA, 10, 3)
is.na(x)
is.nan(x)

x <- c(1, 2, NaN, 10, 3)
is.na(x)
is.nan(x)

# Data frames

x <- data.frame(Erick = 1:4, Lori = c(T, T, F, F))
row.names(x) <- c("Primero", "segundo", "tercero", "cuarto")
x
nrow(x)
attributes(x)
names(x) <- c("Yarely", "Karen")
x
# Los nombres no son exclusivos de los data frames
x <- 1:3
names(x)
names(x) <- c("Hugo", "Paco", "Luis")
x
names(x)

x <- list(a = 1: 10, b=100:91, c=51:60)
x
names(x) <- c("Sec1", "Sec2", "Sec3")
x

m <- matrix(1:4, 2, 2)
m
attributes(m)
dimnames(m) <- list(c("fil1", "fil2"), c("col1", "col2"))
m

m <- matrix(data = NA, 5, 6)
dimnames(m) <- list(c(1:5), c("A", "B", "C", "D", "E", "F"))
m


# Lectura datos
getwnd()
data <- read.csv("table.csv")
data <- read.table("table.csv", T, ",")
data
