#PROYECTO FINAL - DATASET COVID-19

# Cargar el conjunto de datos de entrenamiento
data <- read.csv(file.choose())

# Crear variable FechaMuerte con la información de la columna DATE_DIED
FechaMuerte <- (data$DATE_DIED)

# Crear variable Edad con la información de la columna AGE
EdadPaciente <- (data$AGE)

# Crear variable Genero con la información de la columna SEX
Genero <- (data$SEX)

# Calcular las frecuencias de FechaMuerte, Edad y Genero
frecuencia_fecha <- table(FechaMuerte)
frecuencia_edad <- table(EdadPaciente)
frecuencia_genero <- table(Genero)

# Crear una secuencia de números basada en las frecuencias
datos_fecha <- rep(1:length(frecuencia_fecha), frecuencia_fecha)
datos_edad <- rep(1:length(frecuencia_edad), frecuencia_edad)
datos_genero <- rep(1:length(frecuencia_genero), frecuencia_genero)

# Calcular la frecuencia relativa (%)
frec_relativa_fecha <- frecuencia_fecha / sum(frecuencia_fecha) * 100
frec_relativa_edad <- frecuencia_edad / sum(frecuencia_edad) * 100
frec_relativa_genero <- frecuencia_genero / sum(frecuencia_genero) * 100

# Calcular la frecuencia acumulada
frec_acumulada_fecha <- cumsum(frecuencia_fecha)
frec_acumulada_edad <- cumsum(frecuencia_edad)
frec_acumulada_genero <- cumsum(frecuencia_genero)

# Calcular la frecuencia acumulada relativa (%)
frec_acum_relativa_fecha <- cumsum(frecuencia_fecha) / sum(frecuencia_fecha) * 100
frec_acum_relativa_edad <- cumsum(frecuencia_edad) / sum(frecuencia_edad) * 100
frec_acum_relativa_genero <- cumsum(frecuencia_genero) / sum(frecuencia_genero) * 100

# Crear un dataframe con los resultados
resultadofecha <- data.frame(
  Fecha = as.Date(names(frecuencia_fecha)),
  Frecuencia = frecuencia_fecha,
  FrecuenciaRelativa = frec_relativa_fecha,
  FrecuenciaAcumulada = frec_acumulada_fecha,
  FrecuenciaAcumuladaRelativa = frec_acum_relativa_fecha
)

resultadoedad <- data.frame(
  Edad = as.integer(names(frecuencia_edad)),
  Frecuencia = frecuencia_edad,
  FrecuenciaRelativa = frec_relativa_edad,
  FrecuenciaAcumulada = frec_acumulada_edad,
  FrecuenciaAcumuladaRelativa = frec_acum_relativa_edad
)

resultadogenero <- data.frame(
  Genero = names(frecuencia_genero),
  Frecuencia = frecuencia_genero,
  FrecuenciaRelativa = frec_relativa_genero,
  FrecuenciaAcumulada = frec_acumulada_genero,
  FrecuenciaAcumuladaRelativa = frec_acum_relativa_genero
)


# Imprimir los resultados
print("Resultados de la Tabla de Frecuencia para Fecha de Muerte:")
View(resultadofecha)

print("Resultados de la Tabla de Frecuencia para Edad:")
View(resultadoedad)

print("Resultados de la Tabla de Frecuencia Género:")
View(resultadogenero)

# Histograma para Edad
hist(EdadPaciente, main = "Histograma Edad", xlab = "Edad")

# Histograma para Genero
hist(Genero, main = "Histograma Género", xlab = "Género")


# Polígono de frecuencia para Edad
PoligonoEdad <- table(Edad)[1:30]
plot(PoligonoEdad, type = "o", col = "blue", xlab = "Edad", ylab = "Frecuencia", main = "Polígono de Frecuencia de Edad")

# Polígono de frecuencia para Genero
PoligonoGenero <- table(Genero)
plot(PoligonoGenero, type = "o", col = "blue", xlab = "Género", ylab = "Frecuencia", main = "Polígono de Frecuencia de Género")

PoligonoFrecuencia<-function(vector){
  hg<-hist(vector)
  polygon.freq(hg, lwd=5,col="red")
  
}

PoligonoFrecuencia(EdadPaciente)
PoligonoFrecuencia(Genero)


# Media para Edad
MediaEdad <- mean(Edad)

# No tiene sentido calcular la media para FechaMuerte y Genero, ya que son variables categóricas.

mediana<-function(vec){
  paste("la mediana de su variable:", median(sort(vec)))
}

mediana(EdadPaciente)

moda<-function(vec){
  return(as.numeric(
    names(which.max(table(vec)))))
}

moda(EdadPaciente)

varianza <- function(vector){
  return(var(vector,na.rm=FALSE))
}

varianza(EdadPaciente)

desviacion <- function(q){
  a <- varianza(q)
  valora <- sqrt(a)
  paste("La desviacion estandar es:",valora)
}

desviacion(EdadPaciente)

coeficienteVariacion<-function(vector){
  return(paste("mi coeficiente de variacion es: ",cv(vector)))
}

coeficienteVariacion(EdadPaciente)

cuartiles<-function(vec){
  q<-quantile(vec,
              probs=c(0.25,0.5,0.75))
  return(q)
}

cuartiles(EdadPaciente)

deciles<-function(vec){
  d<-quantile(vec,
              probs<-seq(0.1, 0.9, by=0.1))
  return(d)
}

deciles(EdadPaciente)

percentiles<-function(vec){
  p<-quantile(vec,
              probs<-seq(0.01,0.99,by=0.01))
  return(p)
}

table(percentiles(EdadPaciente))

#Funciones especiales
#-Función de Cálculo de Diferencias en Meses:

calcular_diferencias_meses <- function(data, columna_fecha, startDate) {
  # Filtra fechas no válidas
  data_filtrado <- data[!data[, columna_fecha] %in% c("9999-99-99", ""), ]
  
  # Define la fecha de referencia
  fecha_referencia <- dmy(startDate)  # Cambia la fecha según tus necesidades
  
  # Calcula las diferencias en meses para cada fecha (vectorización)
  meses <- as.numeric(interval(fecha_referencia, dmy(data_filtrado[, columna_fecha])) / months(1))
  
  # Imprime el vector de diferencias en meses
  print(meses)
  
  # Retornar el vector de diferencias en meses
  return(meses)
}

# Supongamos que la columna de fechas se llama 'DATE_DIED'
columna_fecha <- "DATE_DIED"
startDATE <- "01-12-2019"

# Llama a la función con los parámetros adecuados
resultado_diferencias <- calcular_diferencias_meses(data, columna_fecha, startDATE)

#-Funcion y Graficos de BINARIO (HOMBRES Y MUJERES):

# Calcula la frecuencia de cada valor en la columna binaria
frecuencias <- table(Genero)

# Calcula el porcentaje de cada valor
porcentajes <- prop.table(frecuencias) * 100

# Imprime las frecuencias y porcentajes
cat("Frecuencias:\n")
print(frecuencias)

cat("\nPorcentajes:\n")
print(porcentajes)

# Crea un gráfico de barras
barplot(frecuencias, main = "Frecuencia de Mujeres y Hombres", col = c("pink", "blue"), names.arg = c("Mujeres", "Hombres"))

# Crea un gráfico circular (torta) con porcentajes
pie(porcentajes, main = "Porcentaje de Mujeres y Hombres", col = c("pink", "blue"), labels = c("Mujeres","Hombres"))

#Diagrama de Pareto


# Definimos los límites de los rangos de edades
limites_rangos <- c(0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100)

# Creamos un nuevo factor con los rangos de edades
rangos_edades <- cut(EdadPaciente, breaks = limites_rangos, include.lowest = TRUE)

# Calculamos las frecuencias de cada rango
frecuencias <- table(rangos_edades)

# Calculamos las frecuencias ordenadas en orden descendente
frecuencias_ordenadas <- sort(frecuencias, decreasing = TRUE)

# Calculamos la frecuencia acumulada
frecuencia_acumulada <- cumsum(frecuencias_ordenadas)

# Calculamos el porcentaje acumulado
porcentaje_acumulado <- (frecuencia_acumulada / sum(frecuencias_ordenadas)) * 100

# Creamos el diagrama de Pareto
barplot(frecuencias_ordenadas, main = "Diagrama de Pareto para Edades", col = "pink",
        names.arg = levels(rangos_edades), xlab = "Rangos de Edades", ylab = "Frecuencia",
        ylim = c(0, max(frecuencias_ordenadas) * 1.2))
par(new = TRUE)
plot(porcentaje_acumulado, type = "b", col = "blue", pch = 20, axes = FALSE, xlab = "", ylab = "", ylim = c(0, 100))
axis(side = 4)
mtext("Porcentaje Acumulado (%)", side = 4, line = 3)

#Diagrama de caja

# Cargamos la librería ggplot2
library(ggplot2)

# Creamos el diagrama de caja
ggplot(data = NULL, aes(y = EdadPaciente)) +
  geom_boxplot(fill = "lightblue", color = "blue") +
  labs(title = "Diagrama de Caja", y = "Datos") +
  theme_minimal()

