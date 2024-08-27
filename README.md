# CO-examples

Este repositorio tiene como objetivo ilustrar el uso del [paquete `verdata`](https://github.com/HRDAG/verdata) para hacer análisis con los [datos](https://microdatos.dane.gov.co/index.php/catalog/795) resultantes del proyecto conjunto entre la Jurisdicción Especial para la Paz, la Comsión de la Verdad y el Human Rights Data Analysis Group sobre el conflicto armado en Colombia.

En este repositorio encontrará ejemplos para [replicar las cifras del Informe Final de la Comisión](https://github.com/HRDAG/CO-examples/tree/main/Resultados-CEV) y ejemplos de análisis nuevos. Antes de empezar debe descargar los datos (en formato csv o pqrquet) en su máquina local desde: <https://microdatos.dane.gov.co/index.php/catalog/795>. 

Si es su primera vez usando los datos y el paquete, recomendamos leer en primer lugar el material en la carpeta de [Introducción](https://github.com/HRDAG/CO-examples/tree/main/Introducción) para familiarizarse con el proyecto. Por otro lado, la carpeta de [Recursos](https://github.com/HRDAG/CO-examples/tree/main/Recursos) contiene información útil sobre diferentes desagregaciones que se usaron en los análisis de la Comisión de la Verdad y que facilitará su uso de los datos. Además, recomendamos explorar la carpeta de [Resultados-CEV](https://github.com/HRDAG/CO-examples/tree/main/Resultados-CEV) este orden:

1. [Documentados](https://github.com/HRDAG/CO-examples/tree/main/Resultados-CEV/Documentados): En esta carpeta encontrará ejemplos para calcular cifras de víctimas documentadas en más de 100 bases de datos que sirvieron como insumo al proyecto. Esos cálculos también reflejaran la falta de información de los registros en campos como el sexo, la edad, el presunto responsable, el municipio del hecho, la etnia, o su relación o no con el conflicto armado. Las funciones que se usan en estos ejercicios son `confirm_files`, `read_replicates`, `filter_standard_cev`, `summary_observed` del paquete `verdata`. 
2. [Imputación](https://github.com/HRDAG/CO-examples/tree/main/Resultados-CEV/Imputacion): En esta carpeta encontrará ejemplos para calcular cifras de víctimas documentadas en más de 100 bases de datos que sirvieron como insumo al proyecto después del proceso de imputación estadística para completar los campos faltantes de los registros (como el sexo, la edad, el presunto responsable, el municipio del hecho, la etnia, o su relación o no con el conflicto armado). Es decir, estos son análisis con la información completa para cada registro. Las funciones que se usan en estos ejercicios son `confirm_files`, `read_replicates`, `filter_standard_cev`, `combine_replicates` del paquete `verdata`. 
3. [Estimación](https://github.com/HRDAG/CO-examples/tree/main/Resultados-CEV/Estimacion): En esta carpeta encontrará ejemplos para estimar el subregistro de víctimas. Esto es, las víctimas que no estaban documentadas en las más de 100 bases de datos que sirvieron como insumo al proyecto. Entre estos, hay ejemplos para estratificar los datos, es decir, agrupar por variables para hacer los análisis necesarios y ejemplos para etsimar el subregistro, usando las funciones `mse` y `combine_estimates` del paquete `verdata`.
4. [Completos](https://github.com/HRDAG/CO-examples/tree/main/Resultados-CEV/Completos): En esta carpeta encontrará ejemplos para realizar ejercicos de principio a fin con los datos, es decir, en estos ejemplos de usan las 7 funciones del paquete `verdata`.

### Recursos 
En la ruta `Recursos` usted puede encontrar la información relacionada con el diccionario de datos de las réplicas. En este encontrará la definición de cada una de las variables que se encuentran allí, así como nuevas variables que fueron usadas en algunos análisis estadísticos durante la construcción del informe final de la CEV.

Adionalmente encontrará archivos que contienen información municipal, regional, entre otros, los cuales permitieron crear variables para los diversos análisis a nivel documentado, imputado y estimado de víctimas.  

### Replicar ejemplos en su máquina local

Lo primero que debe hacer es clonar este repositorio en su máquina local (en la terminal de su preferencia), tal como se evidencia en la imagen:

`git clone https://github.com/HRDAG/verdata-examples.git`

![image](https://github.com/HRDAG/verdata-examples/assets/92937024/01530102-a1ce-434a-afa0-941e184ee88d)

Cuando haya clonado este repositorio debe dirigirse (en su computador) a la carpeta denominada [Resultados-CEV](https://github.com/HRDAG/verdata-examples/tree/main/Resultados-CEV), allí debe ingresar a una de las carpetas y trabajar en alguno de los archivos `Rmd` los cuales se encuentran en la carpeta denominada "src". Por ejemplo, si quiere replicar un ejercicio que use todas las funciones, debe ir a la siguiente ruta `~/verdata-examples/Resultados-CEV/Completos/src` y allí enontrará dos ejemplos en formato `Rmd` para que pueda reproducir los códigos en RStudio o su software preferido para trabajar con R, y así obtener como output un archivo *html*.

![image](https://github.com/HRDAG/verdata-examples/assets/92937024/3b517a74-996a-44a1-b38a-ce11d732c4bf)

### Abrir archivos HTML

Si en vez de reproducir el código (para verificar o entender las funciones del paquete) quiere ver directamente el documento en formato *html*, puede hacerlo de dos maneras:

1) Sin necesidad de clonar el repositorio, usted puede ingresar a alguna de las carpetas de [Resultados-CEV](https://github.com/HRDAG/verdata-examples/tree/main/Resultados-CEV) y entrar a la carpeta denominada "output". En esta carpeta encontrará una lista de archivos que equivalen a cada ejemplo. Es decir, si quiere observar el documento de desaparición por año, debe dirigirse (en su navegador de preferencia) a [Resultados-CEV/Completos/output](https://github.com/HRDAG/verdata-examples/tree/main/Resultados-CEV/Completos/output), darle clic al archivo denominado "general-desaparicion-anio.html" y luego darle clic en la fecha de descarga que dice *Download raw file*:

<img width="1381" alt="Captura de pantalla 2023-11-28 a la(s) 6 04 09 p  m" src="https://github.com/HRDAG/verdata-examples/assets/92937024/d115d368-8546-4e0d-a946-c0284cb88cfc">

Automáticamente este archivo se comenzará a descargar en la carpeta de su preferencia (que en este caso fue la carpeta de "Descargas"). Luego, usted se dirigirá (en su máquina local) a la carpeta donde descargó el archivo, dándole clic a este:

![image](https://github.com/HRDAG/verdata-examples/assets/92937024/85d8b8a1-1625-4bd3-a1b0-2af895598f35)

Dicho archivo se abrirá en el navegador de su preferencia, mostrando así el ejemplo de desaparición por año:

![image](https://github.com/HRDAG/verdata-examples/assets/92937024/55d3bd63-a483-4c4a-9776-cf35489e6c6a)

2) Si por el contrario usted ya ha clonado el repositorio y desea ver el *hmtl* desde su máquina local, puede ingresar a alguna de las carpetas de [Resultados-CEV](https://github.com/HRDAG/verdata-examples/tree/main/Resultados-CEV) y entrar a la carpeta denominada "output". En esta carpeta encontrará una lista de archivos que equivalen a cada ejemplo. Es decir, si quiere observar el documento de desaparición por año, debe dirigirse a [Resultados-CEV/Completos/output](https://github.com/HRDAG/verdata-examples/tree/main/Resultados-CEV/Completos/output), darle clic al archivo denominado "general-desaparicion-anio.html" y este automáticamente se abrirá en su navegador de preferencia:

![image](https://github.com/HRDAG/verdata-examples/assets/92937024/a218ce79-a970-4f07-8d92-bc0145635e15)
 
