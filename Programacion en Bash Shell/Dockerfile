# Base de ultima version de Ubuntu LTS
FROM ubuntu:18.04

# Obtener el listado de paquetes del repositorio oficial e instalacion de Vim
RUN apt-get update \
	&& apt-get install vim -y \
	&& rm -rf /var/lib/apt/lists/*

# Directorio de practica y configuracion de Vim
RUN mkdir -p /usr/local/courses/shell
COPY .vimrc /root/.vimrc
COPY shell/ /usr/local/courses/shell/

# Clase 5
RUN chmod u+x /usr/local/courses/shell/1_utility_postgres.sh

# Clase 6
RUN echo -e "\n# Creacion de variable de entorno a nivel de Sistema Operativo" >> /etc/profile
RUN echo -e "COURSE_NAME=Programacion en Bash Shell\nexport COURSE_NAME" >> /etc/profile
RUN chmod u+x /usr/local/courses/shell/2_variables.sh /usr/local/courses/shell/2_variables_bis.sh