[:arrow_left: Volver al inicio](../README.md)

![Fundamentos de Bases de Datos](../images/Programacion-en-Bash-Shell.png)
## Configuración del entorno de trabajo con Docker:
Para crear la imagen con las prácticas desarrolladas en cada clase se puede realizar con el siguiente comando:
```bash
docker build -t bash-shell:platzi .
```
Se pueden efectuar las prácticas directamente en una imagen de Ubuntu 18.10:
```bash
docker run -it --rm --name bash-shell ubuntu:18.10 /bin/bash
```
## Prácticas de Clases