# !/bin/bash
# Script para analizar el ambito de las variables

opcion=0
nombre=Marco

echo -e "Opción: $opcion\nNombre: $nombre."

# Exportar la variable $nombre
export nombre

# Invocar la ejecucion de otro archivo
./usr/local/courses/shell/2_variables_bis.sh