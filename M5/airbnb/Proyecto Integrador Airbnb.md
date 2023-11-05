# Proyecto Integrador - Airbnb

<details>
 
  **<summary>Pautas</summary>**  
<div id='id0' /> 

 **Módulo 5:** Data Analytics<br />
**Instructor Henry:** Mario Esteban Suaza Medina<br />
<br />
 
**El objetivo de este trabajo práctico es aplicar los conceptos y técnicas aprendidos en el modulo para realizar un análisis exploratorio y descriptivo de un conjunto de datos reales.**

Para realizar el trabajo práctico se deberá seguir los siguientes pasos:

1. Descargar archivos con los datos [indicar la fuente o el enlace].
2. Importar los datos en un la herramienta que deseen utilizar (Power Bi, Python)
3. Realizar una limpieza y validación preliminar de los datos, identificando y tratando posibles valores faltantes, erróneos o atípicos.
4. Realizar un análisis exploratorio de los datos, utilizando los conceptos aprendidos sobe dataviz y estadística para describir las variables y sus relaciones.
5. Responder a las preguntas que plantea el negocio sobre el dataset elegido.
6. Elaborar un texto con las conclusiones de los resultados del análisis, incluyendo una introducción, una descripción de los datos, algunas respuestas a las preguntas planteadas, y unas conclusiones finales.

### AirBnB

![N|Solid](https://piernine.co/wp-content/uploads/elementor/thumbs/Airbnb-red-lrg-1080x675-1-ph818omam1mv695ypg24xjogcbkjrurf7dgvyjglnk.jpeg)

El objetivo que se busca con el análisis de los datos seleccionados es realizar una análisis exploratorio de tipo descriptivo para entender el negocio de airbnb. 
En base al análisis descriptivo encontrar oportunidades de inversión que puedan ser capitalizadas utilizando dicho modelo de negocio.

#### Preguntas 

* ¿Qué podemos describir con los datasets acerca del negocio de airbnb?
* ¿Cuál es la mejor forma de invertir en AirBnb?
* ¿Cómo se compara con otras alternativas de inversión?
* Si presentamos nuestras conclusiones a un grupo inversor: ¿Qué propuestas le haríamos?
* ¿En donde sugerimos invertir?
* ¿En qué tipo de propiedad?

#### Recursos
| Archivo
| ------ 
| calendar.csv: (incluye datos de ocupación, precio, etc.)  
| listings.csv: Detalle de cada operación de Listing (incluye datos descriptivos de la vivienda (ambientes, host, noches mínimas y máximas, cantidad de reviews)
| reviews.csv Datos de review de los usuarios.
<br />

[Ir al inicio de las pautas](#id0)

</details>

---
<details>

 **<summary>Resumen Ejecutivo</summary>**  
<div id='id00' /> 

**Título**
# Análisis Exploratorio de Datos de AirBnB
<br />

**Indice**
1. [Introducción](#idRE1)
2. [Metodología](#idRE2)
3. [Análisis de Datos](#idRE3)
4. [Resultados y Conclusiones](#idRE4)
5. [Recomendaciones](#idRE5)
6. [Anexos](#idRE6)
<br />

<div id='idRE1' />

### Introducción
El objetivo principal de este análisis exploratorio de datos es comprender en profundidad el funcionamiento de la plataforma Airbnb y, al mismo tiempo, descubrir oportunidades de inversión potenciales en el mercado de alojamientos a corto plazo.

Airbnb, como plataforma en línea líder, ofrece un modelo de negocio basado en la economía colaborativa. Permite a anfitriones particulares y empresas anunciar y ofrecer una amplia gama de alojamientos, que incluyen desde habitaciones hasta casas completas, e incluso experiencias únicas a nivel mundial. Los huéspedes, por su parte, tienen la facilidad de buscar, reservar y alojarse en estos lugares, todo a través de esta plataforma digital.

Durante este análisis, se han estudiado datos relevantes de la plataforma, abordando aspectos clave del mercado de alquileres a corto plazo. Enfocándonos en la presentación y análisis detallado de estos datos, se ha utilizado Power BI para proporcionar una visualización clara y comprensible que nos permita identificar tendencias, patrones y oportunidades para inversión.
<br />
[Ir al índice del Resumen Ejecutivo](#id00)
<br />

<div id='idRE2' />
 
### Metodología
El Cross-Industry Standard Process for Data Mining (CRISP-DM) es una metodología estándar ampliamente utilizada para proyectos de minería de datos y análisis predictivo, sin embargo; sus pasos son igualmente aplicables al análisis exploratorio de datos (EDA) en los cuales nos hemos basado.<br />

![Metodología](https://raw.githubusercontent.com/JohannaRangel/DS_SoyHenry/main/M5/asset/metodo.png)<br />

**- Comprensión del negocio.** 
Se llevó a cabo un análisis detallado del mercado de alquileres a corto plazo a través de Airbnb. Se abordaron preguntas clave para identificar oportunidades de inversión: ¿Qué tendencias definen el mercado de alquileres?, ¿Cuál es la estacionalidad del negocio de Airbnb en ubicaciones específicas?, ¿Existe correlación entre la cantidad de reseñas y la tasa de ocupación o tarifas?, ¿En qué lugares y tipos de propiedades se podría considerar una inversión?, ¿Cuál es la mejor forma de invertir en Airbnb y sus alternativas?
 
**- Comprensión de los datos.** 
Se exploraron y recopilaron datos clave sobre el negocio de Airbnb, proporcionados por Henry (incluyendo calendarios de disponibilidad, listado de propiedades y reseñas). Estos datos fueron analizados para comprender la naturaleza de la información disponible.

**- Preparación de los datos.**
Se enfocó en la limpieza y transformación de datos. Esto implicó el tratamiento de valores nulos o faltantes, eliminación de duplicados y outliers, así como la normalización de formatos. Estas acciones se llevaron a cabo mediante Python y el Editor de Query de Power BI.

**- Análisis de datos.**
Se exploraron patrones relevantes, identificando tendencias en precios y disponibilidad en distintos momentos y ubicaciones. Además, se examinaron los diferentes tipos de alojamientos disponibles en Airbnb y sus características, así como las preferencias y satisfacción de los huéspedes.

**- Interpretación de los resultados.**
Se destacaron los patrones y tendencias identificados, resaltando las áreas de oportunidad y anomalías. Se hicieron énfasis en descubrir áreas potenciales de inversión más rentables.

**- Despliegue de los resultados.**
Se generaron informe técnico y ejecutivo, además de visualizaciones atractivas para presentar los hallazgos en Power BI. Las recomendaciones, fundamentadas en los datos analizados, se enfocarán en áreas ideales para invertir, tipos de propiedades más atractivas, zonas con mayor demanda, entre otros aspectos relevantes.<br />

[Ir al índice del Resumen Ejecutivo](#id00)
<br />

<div id='idRE3' />
 
### Análisis de Datos
Presentamos una serie de KPIs que se derivan de los datos de Airbnb, los cuales se pueden visualizar en nuestra presentación en Power BI:

**- Disponibilidad por tipo de propiedad y barrios.** Ofrece información sobre la disponibilidad de alojamientos específicos en diferentes barrios, permitiendo identificar áreas con mayor oferta.

**- Espacios preferidos por los invitados.** Muestra los tipos de alojamientos preferidos por los huéspedes, ofreciendo una comprensión clara de las preferencias del mercado.

**- Estacionalidad y tendencia en los precios.** Análisis de la evolución estacional de los precios, brindando una visión general de las tendencias de precios a lo largo del tiempo.

**- Análisis de la ocupación a lo largo del tiempo.** Describe la ocupación de propiedades a lo largo de diferentes períodos, permitiendo identificar los momentos de mayor demanda.

**- Promedio de ocupación por mes para detectar temporadas altas y bajas.** Presenta el promedio de ocupación mensual, identificando claramente las temporadas de alta y baja demanda.

**- Puntuación y reseña de los invitados respecto a la calificación del hospedaje, tipo de propiedad y precio.** Ofrece una perspectiva detallada sobre la satisfacción de los huéspedes en relación con diversos factores como la calidad del alojamiento, el tipo de propiedad y su relación con el precio.<br />

[Ir al índice del Resumen Ejecutivo](#id00)
<br />

<div id='idRE4' />
 
### Resultados y Conclusiones
**- Tipo de Propiedad.** En la plataforma Airbnb, los alojamientos disponibles abarcan una amplia gama de tipos, desde habitaciones hasta casas, lofts y condominios. Cada uno de estos tipos de propiedades tiene sus costos adicionales asociados. Por tanto, al considerar una inversión, es crucial analizar el precio, el presupuesto y los costos operativos de la propiedad. En nuestro análisis, se observa que los apartamentos, casas, lofts y condominios son más adecuados para alquileres a corto plazo, siendo estos los tipos de propiedades más atractivos para los huéspedes en plataformas como Airbnb.

**- Ubicacion.** La ubicación es un factor crítico para el éxito en el alquiler a corto plazo. Las zonas que presentan una mayor demanda son aquellas cercanas a atracciones turísticas, en áreas consideradas seguras y con buenas reputaciones y servicios. Sin embargo, en el período de estudio, se identificó que, en algunas zonas, la oferta de propiedades superaba la demanda, con una tasa de ocupación que no superaba el 60%. Los cinco barrios más atractivos para alquileres de corta duración, basados en nuestros datos son: Palermo, Recoleta, San Nicolás, Retiro y Balvanera.

**- Importancia de los Reviews.** Los comentarios y reseñas de los huéspedes son un factor de influencia significativo en la demanda de una propiedad. Se destaca que propiedades con mayores reviews tienden a ser más solicitadas. No obstante, se observó que el precio publicado por el anfitrión no tiene una correlación directa con estas reseñas.

*Es importante considerar que los datos analizados se corresponden con un período que estuvo marcado por una pandemia a nivel global, lo que podría haber generado ciertas anomalías. Por lo tanto, se sugiere ampliar el estudio a diferentes periodos temporales para obtener una comprensión más completa y precisa.* <br />

[Ir al índice del Resumen Ejecutivo](#id00)
<br />

<div id='idRE5' />
 
### Recomendaciones 
Para comparar Airbnb con otras alternativas de inversión, es crucial llevar a cabo un análisis detallado, considerando tanto los aspectos financieros como los de gestión. Recomendamos a los posibles inversores tomarse el tiempo necesario para seleccionar cuidadosamente las propiedades de Airbnb. Esto implica investigar la ubicación, evaluar el mercado local, estimar los costos de propiedad y mantenimiento, y comprender las regulaciones locales.

**- Rentabilidad.** La inversión en Airbnb requiere una administración activa, lo que implica la atención a los huéspedes, la gestión de la propiedad y el mantenimiento. Destacamos que el estatus de Superanfitrión puede aumentar significativamente los precios de alquiler.

**- Gestión Activa.** La inversión en Airbnb implica una gestión activa, ya que debes administrar tus propiedades, atender a los huéspedes y garantizar la limpieza y el mantenimiento. Estas condiciones influyen directamente en la categoría de anfitrión, si entras en la categoría Súper Anfitrión los precios de arriendo de tus propiedades pueden aumentar considerablemente.

**- Riesgo.** Las inversiones en bienes raíces, incluidas las de Airbnb, pueden estar sujetas a riesgos como la variabilidad de los precios de las propiedades y cambios en la demanda de alquileres. Además, es importante considerar el entorno político y económico del área de inversión.

**- Regulaciones y Cumplimiento.**  Las regulaciones locales y las políticas de Airbnb deben ser consideradas. Las inversiones tradicionales suelen estar reguladas, pero las normativas pueden variar según el tipo de inversión.

*La elección entre Airbnb y otras alternativas de inversión dependerá de tus objetivos financieros, tolerancia al riesgo, horizonte temporal y experiencia. Se sugiere realizar un análisis exhaustivo y consultar a un asesor financiero antes de tomar decisiones de inversión.*

**- Además, se proporcionan posibles formas de inversión en el negocio Airbnb:**
- Usando capital propio:
 Adquirir propiedades para alquilar.
 Invertir en acciones de Airbnb en la bolsa.

- Generar ingresos sin ser propietario:
 Administrar propiedades de otros.
 Ofrecer servicios de mantenimiento profesional, como limpiezas a profundidad.
 Automatización y adaptación tecnológica en las propiedades.
 Fotografía y videos profesionales para promocionar propiedades.

*Es fundamental considerar que estas recomendaciones son generales y que las decisiones de inversión deben ajustarse a las necesidades y objetivos individuales de cada inversor. Antes de tomar decisiones de inversión, se recomienda realizar un análisis exhaustivo del mercado y, si es necesario, consultar a asesores financieros o inmobiliarios.* <br />

[Ir al índice del Resumen Ejecutivo](#id00)
<br />

<div id='idRE6' />
 
### Anexos
## - Informe Propiedades**
![Propiedades](https://raw.githubusercontent.com/JohannaRangel/DS_SoyHenry/main/M5/asset/Page1_Propiedades.png)<br />

## - Informe Calendario**
![Calendario](https://raw.githubusercontent.com/JohannaRangel/DS_SoyHenry/main/M5/asset/Page2_Calendario.png)<br />

## - Informe Reseñas**
![Reseñas](https://raw.githubusercontent.com/JohannaRangel/DS_SoyHenry/main/M5/asset/Page3_Reseñas.png)<br />

*Para interactuar con los datos en Power BI Desktop te recomendamos descargar en el siguiente enlace el archivo ModeloAirbnb.pbix*
[Repositorio](http://bit.ly/DS_AirBnB)
<br />

[Ir al índice del Resumen Ejecutivo](#id00)
<br />

</details>

---

<details>
 
  **<summary>Informe Técnico</summary>**  
<div id='id000' /> 

**Análisis Exploratorio de los datos en Python**
```python
#Importación de librerias

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns


#Lectura de los CSV

calendar = pd.read_csv("Datsets/calendar.csv")
listings = pd.read_csv("Datsets/listings.csv")
reviews = pd.read_csv("Datsets/reviews.csv")
```

```python
#Tabla calendar

# Renombrar columnas en estilo "Proper Case"
calendar.columns = [col.capitalize() for col in calendar.columns]

# Cambiar tipos de datos
calendar['Listing_id'] = calendar['Listing_id'].astype('int64')
calendar['Date'] = pd.to_datetime(calendar['Date'])
calendar['Available'] = calendar['Available'].replace({'f': 'NoAvailable', 't': 'Available'})

# Reemplazar valores
calendar['Available'] = calendar['Available'].replace('NoAvailable', 'Rented')

# Eliminar caracteres no deseados y convertir a tipo numérico
calendar['Price'] = calendar['Price'].str.replace('[\$,]', '', regex=True).astype(float)
```

```python
#Tabla listing

# Columnas a eliminar
columnas_a_eliminar = [
    "listing_url", "scrape_id", "last_scraped", "space", "summary", "experiences_offered",
    "neighborhood_overview", "notes", "transit", "access", "interaction", "house_rules",
    "thumbnail_url", "medium_url", "picture_url", "xl_picture_url", "host_url", "host_about",
    "host_thumbnail_url", "host_picture_url", "host_total_listings_count", 
    "street", "neighbourhood_group_cleansed", "state", "zipcode", "market",
    "smart_location", "country_code", "country", "square_feet", "weekly_price", "monthly_price",
    "minimum_minimum_nights", "maximum_minimum_nights", "minimum_maximum_nights",
    "maximum_maximum_nights", "minimum_nights_avg_ntm", "maximum_nights_avg_ntm",
    "calendar_updated", "calendar_last_scraped", "number_of_reviews_ltm",
    "first_review", "last_review", "requires_license", "license", "jurisdiction_names",
     "calculated_host_listings_count",
    "calculated_host_listings_count_entire_homes", "calculated_host_listings_count_private_rooms",
    "calculated_host_listings_count_shared_rooms", "host_location", "host_neighbourhood",
    "maximum_nights", "minimum_nights"
]

# Eliminar columnas en la lista "columnas_a_eliminar"
listings = listings.drop(columns=columnas_a_eliminar)

# Renombrar columnas en estilo "Proper Case"
listings.columns = [col.capitalize() for col in listings.columns]

# Cambiar valores específicos
listings["Host_response_time"].replace({"": "No Data", "N/A": "No Data"}, inplace=True)
listings["Host_response_rate"].replace("N/A", "No Data", inplace=True)
listings["Host_acceptance_rate"].replace("N/A", "No Data", inplace=True)
listings["Host_is_superhost"].replace({"t": "Superhost", "f": "Host"}, inplace=True)
listings["Host_has_profile_pic"].replace({"t": "Yes", "f": "No"}, inplace=True)
listings["Host_identity_verified"].replace({"t": "Yes", "f": "No"}, inplace=True)
listings["City"].replace({"Other (International)": "Buenos Aires", "Mendoza": "Buenos Aires", "Ocean City": "Buenos Aires", "South Florida Gulf Coast": "Buenos Aires", "Beirut": "Buenos Aires", "": "Buenos Aires"}, inplace=True)
listings["Is_location_exact"].replace({"t": "Yes", "f": "No"}, inplace=True)
listings["Instant_bookable"].replace({"t": "InstantBookable", "f": "NotInstantBookable"}, inplace=True)

# Eliminar caracteres no deseados y convertir a tipo numérico
listings['Price'] = listings['Price'].str.replace('[\$,]', '', regex=True).astype(float)
```

```python
#Tabla reviews

# Cambiar tipos de dato
reviews["listing_id"] = reviews["listing_id"].astype(int)
reviews["id"] = reviews["id"].astype(int)
reviews["date"] = pd.to_datetime(reviews["date"])
reviews["reviewer_id"] = reviews["reviewer_id"].astype(int)
reviews["reviewer_name"] = reviews["reviewer_name"].astype(str)
reviews["comments"] = reviews["comments"].astype(str)

# Cambiar nombres de columnas a mayúscula inicial
reviews.columns = [col.capitalize() for col in reviews.columns]

# Cambiar nombre de columna "Id" a "Id_review"
reviews.rename(columns={"Id": "Id_review"}, inplace=True)

# Limpiar y recortar el texto en la columna "Comments"
reviews["Comments"] = reviews["Comments"].str.strip()
```

```python
print("Primeros registros del dataframe 'calendar':")
print(calendar.head())

print("\nPrimeros registros del dataframe 'listings':")
print(listings.head())

print("\nPrimeros registros del dataframe 'reviews':")
print(reviews.head())
```
![P1](https://raw.githubusercontent.com/JohannaRangel/DS_SoyHenry/main/M5/asset/p1.png)<br />

```python
print("Información del dataframe 'reviews':")
print(reviews.info())
```
![P2](https://raw.githubusercontent.com/JohannaRangel/DS_SoyHenry/main/M5/asset/p2.png)<br />

```python
## Histograma

# La columna Price de la tabla calendar contiene valores extremos , por lo que se tuvo que utilizar la escala logaritica para
#evitar que todos los valores caigan en un solo contenedor

plt.figure(figsize=(10, 6))
plt.hist(calendar["Price"], bins=50, edgecolor='black')
plt.yscale('log')  # Configura la escala logarítmica en el eje y
plt.title('Histograma de Precios (Escala Logarítmica)')
plt.xlabel('Precio')
plt.ylabel('Frecuencia (escala logarítmica)')
plt.show()
```
![P3](https://raw.githubusercontent.com/JohannaRangel/DS_SoyHenry/main/M5/asset/p3.png)<br />

```python
#Quitamos los valores extremos de la columna price de la tabla calendar

# Calcular el promedio y la desviación estándar
promedio = calendar["Price"].mean()
std = calendar["Price"].std()

# Definir un umbral (por ejemplo, 3 veces la desviación estándar)
umbral = 3 * std

# Quitar los varoles extremos
calendar = calendar[(calendar["Price"] >= promedio - umbral) & (calendar["Price"] <= promedio + umbral)]

# Crear el histograma sin los valores extremos
plt.figure(figsize=(10, 6))
plt.hist(calendar["Price"], bins=50, edgecolor='black')
plt.title('Histograma de Precios')
plt.xlabel('Precio')
plt.ylabel('Frecuencia')
plt.show()
```
![P4](https://raw.githubusercontent.com/JohannaRangel/DS_SoyHenry/main/M5/asset/p4.png)<br />

```python
## Diagramas de dispersión
## Vamos a ver la correlación entre el precio del alojamiento y el valor de la valuación de la propiedad según los usuarios.

#Quitamos los valores extremos de la columna price del dataframe listings

# Calcular el promedio y la desviación estándar
promedio = listings["Price"].mean()
std = listings["Price"].std()

# Definir un umbral (por ejemplo, 3 veces la desviación estándar)
umbral = 3 * std

# Quitar los varoles extremos
listings = listings[(listings["Price"] >= promedio - umbral) & (listings["Price"] <= promedio + umbral)]

# Calcular el promedio y la desviación estándar
promedio = listings["Price"].mean()
std = listings["Price"].std()

# Definir un umbral (por ejemplo, 3 veces la desviación estándar)
umbral = 3 * std

# Quitar los varoles extremos
listings = listings[(listings["Price"] >= promedio - umbral) & (listings["Price"] <= promedio + umbral)]
```

```python
# Establecer un estilo de gráfico de seaborn
sns.set(style="whitegrid")

# Crear un gráfico de dispersión con el mismo color
plt.figure(figsize=(12, 8))
plt.scatter(listings["Price"], listings["Review_scores_rating"], alpha=0.3, color='#1F77B4') 
plt.title('Correlación entre la calificación y el precio', fontsize=16)
plt.xlabel('Precio', fontsize=14)
plt.ylabel('Calificación', fontsize=14)

plt.grid(True)
plt.show()
```
![P5](https://raw.githubusercontent.com/JohannaRangel/DS_SoyHenry/main/M5/asset/p5.png)<br />

[Ir al inicio del Informe Técnico](#id000)

</details>

---

> **Important** 
> Esta actividad (netamente educativa) es parte de mi portafolio de prácticas que permiten mejorar mis habilidades en Data Science con problemas y conjuntos de datos del mundo real.
