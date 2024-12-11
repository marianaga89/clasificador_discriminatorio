# Mayo 2018
# Clasificador Discriminatorio

El objetivo principal de este proyecto es contribuir al desarrollo de un sistema eficiente y preciso para la detección de lenguaje discriminatorio en redes sociales.

## Estructura del Proyecto

### 1. Datos

El proyecto utiliza datos compartidos por el Consejo para Prevenir y Eliminar la Discriminación de la Ciudad de México (COPRED). Se eliminaron datos sensibles para garantizar la privacidad.

#### Archivos incluidos:

- **motivos\_discriminacion.xlsx**: Contiene los motivos de discriminación registrados.
- **reporte\_vw\.xlsx**: Reporte de análisis de casos.

#### Base de tweets compartida:

- **data/tweets\_cuentascdmx.csv**: Base de datos de tweets compartida inicialmente.

#### Tweets recolectados:

- Las carpetas contienen los tweets recolectados, organizados por frases buscadas.
- Archivos que consolidan todos los tweets recolectados, categorizados por tema.

### 2. scr (Scripts)

Esta carpeta incluye los scripts utilizados para procesar los datos y crear el modelo de clasificación.

#### Descripción de los scripts:

- **01 - Análisis inicial**:
  - Análisis de la base de tweets compartida. Se determinó que la información era insuficiente.
- **02 - Recolección con rvest**:
  - Implementación de `rvest` para recolectar tweets desde la web.
- **03 - Análisis exploratorio (EDA)**:
  - Exploración de los datos compartidos por COPRED.
- **04 - Lectura de tweets con la API de Twitter**:
  - Recolección de tweets basados en palabras clave.
- **05 - Consolidación de datos**:
  - Unión de todos los tweets recolectados en el script anterior. Este proceso se repitió dos veces, generando "datos" y "datos 2".
- **06 - Clasificación con Naive Bayes**:
  - Implementación del clasificador utilizando el modelo Naive Bayes.

### 3. copred\_app (Aplicación Web Shiny)

Esta carpeta contiene una aplicación web desarrollada en Shiny para interactuar con el modelo.

#### Instrucciones para ejecutar la aplicación:

1. Abre uno de los archivos principales de la aplicación: `global.R`, `server.R`, o `ui.R`.
2. Haz clic en el botón **Run App** para iniciar la aplicación.

