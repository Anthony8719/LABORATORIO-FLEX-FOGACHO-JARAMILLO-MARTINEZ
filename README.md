# LABORATORIO-FLEX-FOGACHO-JARAMILLO-MARTINEZ

## Requisitos y ejecución de los ejercicios

Este repositorio contiene ejercicios prácticos desarrollados con **Lex/Flex**, orientados al estudio del análisis léxico dentro de la asignatura Compiladores y Lenguajes.

Los archivos fuente tienen la extensión `.l` y contienen las expresiones regulares, reglas y acciones necesarias para implementar analizadores léxicos. Cada ejercicio es independiente y puede compilarse y ejecutarse por separado.

### 1. Requisitos previos

Para compilar y ejecutar los ejercicios es necesario contar con:

- **Ubuntu o alguna distribución de Linux:** entorno de ejecución.
- **Flex:** herramienta que genera el analizador léxico a partir de un archivo `.l`.
- **GCC:** compilador que permite generar el programa ejecutable.
- **Bibliotecas de desarrollo de C:** necesarias para compilar el código generado por Flex.
- **Visual Studio Code (opcional):** editor de código para visualizar y modificar los archivos.

En Windows se puede utilizar Ubuntu mediante WSL (Windows Subsystem for Linux) o una máquina virtual.

Para instalar las herramientas necesarias en Ubuntu:

```bash
sudo apt update
sudo apt install -y flex gcc build-essential libc6-dev libfl-dev
```

Para verificar la instalación:

```bash
flex --version
gcc --version
```

### 2. Organización de los archivos

Los ejercicios están organizados en carpetas independientes dentro del repositorio.

Cada carpeta puede contener:

- **Archivo `.l`:** código fuente del analizador léxico.
- **Archivo `.txt`:** datos de entrada utilizados para comprobar el funcionamiento del programa.
- **Documentación o informe:** explicación del ejercicio y evidencias de ejecución, cuando corresponda.

Los archivos generados durante la compilación no son necesarios para revisar el código fuente, ya que pueden obtenerse nuevamente utilizando Flex y GCC.

### 3. Procedimiento general de ejecución

**Paso 1. Acceder a la carpeta del ejercicio**

Abrir una terminal de Ubuntu y desplazarse hasta el directorio que contiene el archivo `.l`.

```bash
cd ruta/del/ejercicio
```

Para verificar los archivos disponibles:

```bash
ls
```

**Paso 2. Generar el analizador léxico**

Ejecutar Flex indicando el nombre del archivo fuente:

```bash
flex archivo.l
```

Este comando genera un archivo llamado `lex.yy.c`, que contiene el código C correspondiente al analizador léxico.

**Paso 3. Compilar el código generado**

Utilizar GCC para crear el programa ejecutable:

```bash
gcc lex.yy.c -o analizador -lfl
```

El parámetro `-o` permite asignar un nombre al ejecutable, mientras que `-lfl` enlaza la biblioteca de Flex.

**Paso 4. Ejecutar el programa**

Para ingresar los datos manualmente:

```bash
./analizador
```

Escribir el texto de entrada y finalizar mediante `Ctrl+D` para indicar el fin del archivo.

Si el ejercicio incluye un archivo de prueba `.txt`, se puede utilizar directamente:

```bash
./analizador < prueba.txt
```

El programa procesará el contenido del archivo y mostrará los resultados definidos en las reglas del analizador.

### 4. Revisión y verificación de los ejercicios

Para revisar cualquier ejercicio del repositorio se recomienda:

1. Abrir la carpeta correspondiente e identificar el archivo fuente `.l`.
2. Examinar las expresiones regulares y las acciones implementadas.
3. Generar el código C mediante Flex.
4. Compilar el programa utilizando GCC.
5. Ejecutar el analizador con los datos de prueba disponibles.
6. Verificar que los resultados correspondan con el comportamiento solicitado en el enunciado.

En caso de modificar el archivo `.l`, se deben repetir los pasos de generación y compilación para aplicar los cambios.

### 5. Consideraciones importantes

- Los comandos deben ejecutarse desde la carpeta donde se encuentra el archivo correspondiente.
- Linux distingue entre mayúsculas y minúsculas en los nombres de archivos.
- Cada ejercicio funciona de manera independiente.
- El archivo `lex.yy.c` es generado automáticamente por Flex.
- Los archivos `.txt` permiten reproducir las pruebas sin ingresar los datos manualmente.
- Para ejecutar los ejercicios en Windows se recomienda utilizar Ubuntu mediante WSL.
- Si aparece un error durante la compilación, verificar que Flex, GCC y las bibliotecas de desarrollo estén instalados correctamente.

### 6. Finalidad del repositorio

El propósito de este repositorio es documentar las prácticas realizadas durante el semestre, facilitar la revisión del código fuente y permitir que los ejercicios puedan reproducirse en un entorno Linux utilizando las herramientas estándar de desarrollo de analizadores léxicos.