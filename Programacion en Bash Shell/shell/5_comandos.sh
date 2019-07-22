# !/bin/bash
# Script utilizando comandos y almacenándolos en variables.
# Autor: @ChristianGrimberg

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo -e "La ubicacion actual es $ubicacionActual"
echo -e "Información del Kernel: $infoKernel"