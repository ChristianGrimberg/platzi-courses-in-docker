[:arrow_left: Volver al inicio](../README.md)

![Fundamentos de Bases de Datos](../images/Programacion-en-Bash-Shell.png)
## Configuración del entorno de trabajo con Docker:
1. Para crear la imagen con las prácticas efectuadas de cada clase, se realiza de la siguiente manera:
    ```bash
    docker build -t bash-shell:platzi .
    ```
1. Para iniciar el contenedor en modo interactivo con la imagen construida anteriormente:
    ```bash
    docker run -it --rm --name bash-shell bash-shell:platzi /bin/bash
    ```
## Prácticas de Clases
El material realizado en cada clase se puede correr dentro del contenedor de la imagen `bash-shell:platzi` realizando los siguientes comandos de Docker:
### Clase 5
* Ejecutar nuestro script con un nombre único:
    ```bash
    docker run -it --rm --name bash-shell bash-shell:platzi /bin/bash ./usr/local/courses/shell/1_utility_postgres.sh
    ```
### Clase 6
* Declaración de Variables y Alcance en Bash Shell:
    ```bash
    docker run -it --rm --name bash-shell bash-shell:platzi /bin/bash ./usr/local/courses/shell/2_variables.sh
    ```
### Clase 7
* Tipo de operadores:
    ```bash
    docker run -it --rm --name bash-shell bash-shell:platzi /bin/bash ./usr/local/courses/shell/3_tipoOperadores.sh
    ```