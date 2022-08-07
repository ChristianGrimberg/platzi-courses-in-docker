# !/bin/bash
# Script con argumentos
# Autor: @ChristianGrimberg

nombreCurso=$1
horarioCurso=$2

echo -e "El nombre del curso es $nombreCurso y el horario es de $horarioCurso."
echo -e "La cantidad de argumentos recibidos es $#."
echo -e "Los parámetros enviados son $*."
echo -e "La ejecucion de script es $0"