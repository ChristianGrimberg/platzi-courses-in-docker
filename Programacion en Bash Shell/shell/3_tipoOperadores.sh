# !/bin/bash
# Script para analizar los tipos de operadores
# Autor: @ChristianGrimberg

numA=10
numB=4

echo -e "Operadores Aritméticos"
echo -e "Números A=$numA y B=$numB"
echo -e "Suma de A y B =" $((numA + numB))
echo -e "Resta de A menos B =" $((numA -numB))
echo -e "Multiplicación de A por B =" $((numA * numB))
echo -e "División de A sobre B =" $((numA / numB))
echo -e "Resto de A y B =" $((numA % numB))

echo -e "\nOperadores Relacionales"
echo -e "Números A=$numA y B=$numB"
echo -e "A < B =" $((numA < numB))
echo -e "A > B =" $((numA > numB))
echo -e "A <= B =" $((numA <= numB))
echo -e "A >= B =" $((numA >= numB))
echo -e "A == B =" $((numA == numB))
echo -e "A != B =" $((numA != numB))

echo -e "\nOperadores de Asignación"
echo -e "Números A=$numA y B=$numB"
echo -e "Sumar B en A =" $((numA += numB))
echo -e "Restar B en A =" $((numA -= numB))
echo -e "Multiplicar B en A =" $((numA *= numB))
echo -e "Dividir B en A =" $((numA /= numB))
echo -e "Aplicar el resto de B sobre A =" $((numA %= numB))
echo -e "\nNúmeros A=$numA y B=$numB"