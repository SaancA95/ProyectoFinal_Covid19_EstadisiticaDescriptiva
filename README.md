
# Proyecto Final Grupo Nº2
## Dataset Covid 19

![](https://github.com/SaancA95/ProyectoFinal_Covid19_EstadisiticaDescriptiva/blob/main/covid-removebg-preview.png)

------------

|Datos |  |
| ---  | ---  |
| Docente:  | Sebastian Landazuri |
| Materia: | Estadistica Descriptiva |
| Carrera: | Desarrollo de Software | 
| Nivel: | III |
| Estudiantes: | Anthony Lanchi, Juan Sanchez, David Yepez, Kevin Chavez  |

------------
### Introduccion 

El COVID-19 ha sido uno de los eventos más significativos de la última década, impactando profundamente en todas las áreas de la vida humana. En este proyecto, se llevará a cabo un análisis estadístico descriptivo de los datos relacionados con el COVID-19 utilizando el lenguaje de programación R y sus bibliotecas especializadas.

El objetivo principal de este proyecto es proporcionar una comprensión detallada de la distribución y características de los datos relacionados con el COVID-19. Para lograr esto, se llevará a cabo un análisis descriptivo exhaustivo que incluye la creación de una variedad de visualizaciones y medidas estadísticas.

El conjunto de datos utilizado contendrá información sobre casos confirmados, recuperaciones, muertes y otras variables relevantes relacionadas con el COVID-19. A través de este análisis, se buscará identificar patrones, tendencias y variaciones en los datos que puedan ser de interés para investigadores, profesionales de la salud y responsables de la toma de decisiones.

El análisis incluirá las siguientes técnicas y visualizaciones:

1.  **Tabla de frecuencias:** Para resumir la distribución de las variables categóricas.
2.  **Histograma:** Para visualizar la distribución de una variable numérica.
3.  **Polígono de frecuencia:** Para representar la distribución de una variable numérica de manera suave.
4.  **Gráfico circular:** Para mostrar la proporción de diferentes categorías dentro de una variable categórica.
5.  **Medidas de resumen estadístico:** Media, Mediana, Moda, Varianza, Desviación estándar, Coeficiente de variación, se calcularán para proporcionar una descripción completa de las características centrales y de dispersión de los datos.
7.  **Cuartiles, Deciles, Percentiles:** Para comprender la distribución de los datos en diferentes partes.
8.  **Diagrama de cajas:** Para visualizar la distribución de una variable numérica y detectar posibles valores atípicos.
9.  **Diagrama de Pareto:** Para identificar las categorías más importantes dentro de una variable categórica en términos de su frecuencia relativa.

Este proyecto proporcionará una visión integral de los datos relacionados con el COVID-19, lo que podría ayudar en la comprensión de la evolución de la pandemia, la identificación de áreas de preocupación y la formulación de estrategias efectivas para abordarla. Además, servirá como un ejemplo de cómo llevar a cabo un análisis estadístico descriptivo completo utilizando Rstudio.
                

### Objetivos

- El objetivo principal de este proyecto es construir un modelo de aprendizaje automático que, dados los síntomas actuales, el estado y el historial médico de un paciente con Covid-19, prediga si el paciente está en alto riesgo o no.

- Identificar tendencias temporales en la incidencia del COVID-19, como picos estacionales o cambios en la tasa de propagación.

- Determinar la relación entre diferentes variables, como la edad, el sexo, las condiciones de salud preexistentes y la gravedad de la enfermedad.

### Marco Teorico 
#### Descripción: 
La enfermedad por coronavirus (COVID-19) es una enfermedad infecciosa causada por 
un coronavirus recién descubierto. La mayoría de las personas infectadas con el virus 
COVID-19 experimentarán enfermedades respiratorias de leves a moderadas y se 
recuperarán sin requerir tratamiento especial. Las personas mayores y aquellas con 
problemas médicos subyacentes como enfermedades cardiovasculares, diabetes, 
enfermedades respiratorias crónicas y cáncer tienen más probabilidades de desarrollar 
enfermedades graves.

El Dataset fue proporcionado por el gobierno mexicano como informacion enorme relacionada con este tipo de pacientes con esta condicion. Para poder leer correctamente este conjunto de datos debemos tomar en cuenta que existen 21 caracteristicas unicas y 1.048.575 pacientes unicos. A ciertas caractesticas estan como tipo **booleana**, 1 significa "si" y 2 significa "no", valores como 97 y 98 son datos faltantes

En las caracteristicas tomar en cuenta que:

- **Sexo:** 1 para la mujer y 2 para el hombre.

- **Edad:** del paciente.

- **Clasificación**: Resultados de las pruebas de COVID. Los valores de 1 a 3 significan que el paciente fue diagnosticado con covid en diferentes grados. 4 o más significa que el paciente no es portador de COVID o que la prueba no es concluyente.

- **Tipo de paciente**: Tipo de atención que recibió el paciente en la unidad. 1 para el regreso a casa y 2 para la hospitalización.

- **Neumonía:** si el paciente ya tiene inflamación de los sacos aéreos o no.

- **Embarazo:** si la paciente está embarazada o no.

- **Diabetes:** si el paciente tiene diabetes o no.

- **EPOC:** Indica si el paciente tiene enfermedad pulmonar obstructiva crónica o no.

- **Asma:** si el paciente tiene asma o no.

- **INMSUPR:** si el paciente está inmunodeprimido o no.

- **Hipertensión:** si el paciente tiene hipertensión o no.

- **Cardiovascular:** si el paciente tiene una enfermedad relacionada con el corazón o los vasos sanguíneos.

- **Renal crónico:** si el paciente tiene enfermedad renal crónica o no.

- **Otra enfermedad:** si el paciente tiene otra enfermedad o no.

- **Obesidad:** si el paciente es obeso o no.

- **Tabaco:** si el paciente es consumidor de tabaco.

- **usmr:** Indica si el paciente trató unidades médicas de primer, segundo o tercer nivel.

- **Unidad médica:** tipo de institución del Sistema Nacional de Salud que prestó la atención.

- **Entubado:** si el paciente estaba conectado al respirador.

- **UCI:** Indica si el paciente ha sido ingresado en una Unidad de Cuidados Intensivos.

- **fecha de fallecimiento:** Si el paciente falleció indicar la fecha de fallecimiento, y 9999-99-99 en caso contrario.

#### Librerias implementadas: 

- **agricolae:** Esta librería proporciona herramientas para análisis estadístico y experimentación agronómica. Incluye funciones para realizar análisis de varianza, pruebas de comparación múltiple, análisis de regresión, entre otros, que son comunes en estudios agrícolas y experimentos.
- **gtools:** Es una colección de funciones que amplían las capacidades básicas de R. Incluye funciones útiles para el manejo de datos, manipulación de vectores, operaciones con matrices, manipulación de strings, entre otros. Esta librería es muy útil para tareas de programación y análisis de datos.
- **qcc:** qcc (Quality Control Charts) es una librería utilizada para crear gráficos de control de calidad, que son herramientas comúnmente utilizadas en la industria para monitorear y controlar la calidad de los procesos. Permite la creación de gráficos como gráficos de control Shewhart, gráficos CUSUM, gráficos EWMA, entre otros, que son esenciales para el control de calidad en diversos campos.
- **raster:** raster es una librería utilizada para el análisis y manipulación de datos raster, es decir, datos que representan información geoespacial en forma de cuadrículas. Permite la lectura, escritura, manipulación y análisis de datos raster, así como la realización de operaciones espaciales avanzadas y modelado de datos geoespaciales.
- **ggplot2:** es una librería ampliamente utilizada para la creación de gráficos en R. Ofrece una gramática de gráficos que permite crear gráficos complejos de manera fácil e intuitiva. Con ggplot2, puedes crear una amplia variedad de gráficos, desde simples diagramas de dispersión hasta gráficos estadísticos complejos con múltiples capas y facetas.
- **lubridate:** lubridate es una librería diseñada para facilitar la manipulación de fechas y horas en R. Proporciona funciones sencillas y coherentes para realizar operaciones comunes con fechas, como sumar días, calcular la diferencia entre fechas, extraer componentes de fechas (día, mes, año, etc.), y mucho más. Es especialmente útil para el análisis de datos temporales y series de tiempo.
 
#### Aplicaciones Implementadas
**RStudio:** lenguaje de programación R. Ofrece una interfaz gráfica amigable y funcionalidades diseñadas específicamente para facilitar el trabajo con R, lo que lo convierte en una herramienta popular entre los científicos de datos, analistas estadísticos y programadores que utilizan R para análisis de datos y modelado estadístico.

- **Version** -> 2023.12.1+402
- **Editor** -> Posit Software
  
#### Funcionamiento del proyecto

En primer lugar cargamos nuestro conjunto de datos 

```javascript
data <- read.csv(file.choose())
```
Creamos las variables donde se van estar alojadas nuestras columnas que vamos a usar
```javascript
FechaMuerte <- (data$DATE_DIED)
EdadPaciente <- (data$AGE)
Genero <- (data$SEX)
```

##### Tablas de Frecuencia
Calculamos las frecuencias de FechaMuerte, Edad y Genero
```javascript
frecuencia_fecha <- table(FechaMuerte)
frecuencia_edad <- table(EdadPaciente)
frecuencia_genero <- table(Genero)
```
Creamos una secuencia de numeros basada en las frecuencias
```javascript
datos_fecha <- rep(1:length(frecuencia_fecha), frecuencia_fecha)
datos_edad <- rep(1:length(frecuencia_edad), frecuencia_edad)
datos_genero <- rep(1:length(frecuencia_genero), frecuencia_genero)
```
Calculamos la frecuencia relativa (%)
```javascript
frec_relativa_fecha <- frecuencia_fecha / sum(frecuencia_fecha) * 100
frec_relativa_edad <- frecuencia_edad / sum(frecuencia_edad) * 100
frec_relativa_genero <- frecuencia_genero / sum(frecuencia_genero) * 100
```
Calculamos la frecuencia acumulada
```javascript
frec_acumulada_fecha <- cumsum(frecuencia_fecha)
frec_acumulada_edad <- cumsum(frecuencia_edad)
frec_acumulada_genero <- cumsum(frecuencia_genero)
```
Calculamos la frecuencia acumulada relativa (%)
```javascript
frec_acum_relativa_fecha <- cumsum(frecuencia_fecha) / sum(frecuencia_fecha) * 100
frec_acum_relativa_edad <- cumsum(frecuencia_edad) / sum(frecuencia_edad) * 100
frec_acum_relativa_genero <- cumsum(frecuencia_genero) / sum(frecuencia_genero) * 100
```

Creamos dataframes para poder visualizar los datos previamente creados en una tabla
```javascript
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

```
Visualizamos los datos de la siguiente forma
```javascript
print("Resultados de la Tabla de Frecuencia para Fecha de Muerte:")
View(resultadofecha)

print("Resultados de la Tabla de Frecuencia para Edad:")
View(resultadoedad)

print("Resultados de la Tabla de Frecuencia Género:")
View(resultadogenero)
```
##### Histogramas
Para la interpretacion de la sintasix de los histogramas es una representacion grafica de los datos que tenemos seleccionados de nuestro dataset

```javascript
# Histograma para Edad
hist(EdadPaciente, main = "Histograma Edad", xlab = "Edad")

# Histograma para Genero
hist(Genero, main = "Histograma Género", xlab = "Género")
```
##### Poligonos de frecuencia

```javascript
PoligonoFrecuencia<-function(vector){
  hg<-hist(vector)
  polygon.freq(hg, lwd=5,col="red")
}

PoligonoFrecuencia(EdadPaciente)
PoligonoFrecuencia(Genero)
```
NOTA: La columna fecha no se puede interpretar en un poligono de frecuencia e  histograma ya que solo admite datos numericos para representar estos graficos

#### Media

La media, también conocida como promedio, es una medida estadística que representa el valor típico o central de un conjunto de datos numéricos. En este caso vamos a representar la media de la edad de los pacientes

```javascript
MediaEdad <- mean(EdadPaciente)
```

#### Mediana
La mediana es otro tipo de medida de tendencia central que representa el valor central de un conjunto de datos ordenados.En este caso vamos a calcular la mediana de los datos de la edad de los pacientes

```javascript
mediana<-function(vec){
  paste("la mediana de su variable:", median(sort(vec)))
}

mediana(EdadPaciente)
```
#### Moda
La moda es el valor que aparece con mayor frecuencia en un conjunto de datos. En otras palabras, es el valor que ocurre con mayor frecuencia. Vamos a sacar el mayor valor a partir de la edad de los pacientes

```javascript
moda<-function(vec){
  return(as.numeric(
    names(which.max(table(vec)))))
}

moda(EdadPaciente)
```
#### Varianza Muestral
La varianza es una medida de dispersión que representa la media de los cuadrados de las desviaciones de cada valor con respecto a la media del conjunto de datos. Calculemos a partir de la edad

```javascript
varianza <- function(vector){
  return(var(vector,na.rm=FALSE))
}

varianza(EdadPaciente)
```
#### Desviacion Estandar
La desviación estándar es la raíz cuadrada de la varianza y proporciona una medida de dispersión en las mismas unidades que los datos originales. Veamos el calculo a partir de la edad
```javascript
desviacion <- function(q){
  a <- varianza(q)
  valora <- sqrt(a)
  paste("La desviacion estandar es:",valora)
}

desviacion(EdadPaciente)
```
#### Coeficiente de Variacion
El coeficiente de variación (CV) es una medida de la variabilidad relativa de un conjunto de datos en relación con su media. Se calcula como el cociente entre la desviación estándar y la media del conjunto de datos, multiplicado por 100 para expresarlo como un porcentaje. Para el calulo del CV para la edad de los pacientes realizamos

```javascript
coeficienteVariacion<-function(vector){
  return(paste("mi coeficiente de variacion es: ",cv(vector)))
}

coeficienteVariacion(EdadPaciente)
```
#### Cuartiles
Los cuartiles dividen un conjunto de datos ordenados en cuatro partes iguales, cada una representando el 25% de los datos. Los tres cuartiles son:

- Primer cuartil (Q1): El valor por debajo del cual se encuentra el 25% de las edades los pacientes.
- Segundo cuartil (Q2): Es igual a la mediana, divide los datos en dos partes iguales de los edades de los pacientes.
- Tercer cuartil (Q3): El valor por debajo del cual se encuentra el 75% de las edades de los pacientes.
  
```javascript
cuartiles<-function(vec){
  q<-quantile(vec,
              probs=c(0.25,0.5,0.75))
  return(q)
}

cuartiles(EdadPaciente)
```
#### Deciles
Los deciles dividen un conjunto de datos ordenados en diez partes iguales, cada una representando el 10% de los datos. Los nueve deciles se conocen como D1, D2, ..., D9.
```javascript
deciles<-function(vec){
  d<-quantile(vec,
              probs<-seq(0.1, 0.9, by=0.1))
  return(d)
}

deciles(EdadPaciente)
```
#### Percentiles
Los percentiles dividen un conjunto de datos ordenados en cien partes iguales, cada una representando el 1% de los datos. Los percentiles son valores que indican el porcentaje de observaciones que están por debajo de un determinado valor en el conjunto de datos.

```javascript
percentiles<-function(vec){
  p<-quantile(vec,
              probs<-seq(0.01,0.99,by=0.01))
  return(p)
}

table(percentiles(EdadPaciente))
```

NOTA: No tiene sentido calcular la media,mediana,moda,etc. Para FechaMuerte y Genero, ya que son variables categóricas.

### Funciones especiales

#### - Función de Cálculo de Diferencias en Meses:
Esta función toma un conjunto de datos data, una columna que contiene fechas columna_fecha y una fecha de inicio startDate. Luego, filtra las fechas no válidas (aquellas que tienen valor "9999-99-99"), define una fecha de referencia y calcula las diferencias en meses entre cada fecha en la columna y la fecha de referencia. La función devuelve un vector con las diferencias en meses.

```javascript
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
resultado_diferencias <- calcular_diferencias_meses(data, columna_fecha, startDATE)
```
#### - Funcion y Graficos de BINARIO (HOMBRES Y MUJERES):
Calcula las frecuencias de los valores en la columna binaria (suponiendo que 1 representa a mujeres y 2 a hombres), calcula los porcentajes de cada valor, imprime las frecuencias y porcentajes, y crea dos gráficos: un gráfico de barras que muestra la frecuencia de mujeres y hombres, y un gráfico circular (torta) que muestra el porcentaje de mujeres y hombres. Los colores 'pink' y 'blue' se utilizan para representar mujeres y hombres respectivamente.

```javascript
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
pie(porcentajes, main = "Porcentaje de Mujeres y Hombres", col = c("pink", "blue"), labels = c("Mujeres", "Hombres"))
```
#### - DIAGRAMA DE PARETO
Es una combinación de un gráfico de barras y una línea que muestra los valores acumulados de las barras, ordenados de mayor a menor. Se utiliza para identificar las causas principales que contribuyen a un resultado.

```javascript

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
```
#### DIAGRAMA DE CAJA
Es un gráfico que muestra la distribución de un conjunto de datos numéricos a través de sus cuartiles. Es útil para visualizar la dispersión y los valores atípicos en los datos.


```javascript
# Cargamos la librería ggplot2
library(ggplot2)

# Creamos el diagrama de caja
ggplot(data = NULL, aes(y = EdadPaciente)) +
  geom_boxplot(fill = "lightblue", color = "blue") +
  labs(title = "Diagrama de Caja", y = "Datos") +
  theme_minimal()
```




