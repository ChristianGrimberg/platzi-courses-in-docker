# Fundamentos de Bases de Datos
## Configuración del entorno de trabajo con Docker
Desde la terminal de comandos, se debe acceder al directorio docker contenido aquí, y para generar la imagen a utilizar por el contenedor se efectúa de la siguiente forma:
```bash
cd docker
docker build -t mysql:platzi .
```
Para correr el contenedor a partir de la imagen `mysql:platzi`, se debe correr el siguiente comando:
```bash
docker-compose up -d
```
Para bajar el contenedor (_importante! se borran los datos al salir_):
```bash
docker-compose down
```