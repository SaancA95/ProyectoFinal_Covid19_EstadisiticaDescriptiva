
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

##### Tablas de Frecuencia

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

