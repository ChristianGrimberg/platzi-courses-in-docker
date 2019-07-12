[:arrow_left: Volver al inicio](../README.md)

![Fundamentos de Bases de Datos](../images/Programacion-en-Bash-Shell.png)
## Configuración del entorno de trabajo con Docker:
1. Para crear la imagen con las prácticas efectuadas de cada clase, se realiza de la siguiente manera:
    ```bash
    docker build -t bash-shell:platzi .
    ```
1. Para iniciar el contenedor con la imagen construida recientemente:
    ```bash
    docker run -it --rm --name bash-shell bash-shell:platzi /bin/bash
    ```
## Prácticas de Clases
El material realizado en cada clase se puede correr dentro del contenedor de la imagen `bash-shell:platzi` realizando los siguientes comandos de Docker:
### Clase 5
```bash
docker run -it --rm --name bash-shell bash-shell:platzi /bin/bash ./usr/local/courses/shell/1_utility_postgres.sh
```