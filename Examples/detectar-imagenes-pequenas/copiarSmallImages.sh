#!/bin/bash

# borrar si existe de antemano
DIRNAME="small-images"
rm -rf $DIRNAME

# https://unix.stackexchange.com/questions/50612/how-to-combine-2-name-conditions-in-find
find -type f -a \( -iname "*.jpg" -o -iname "*.jpeg" \)

# -t borra el salto de línea final que agrega find
mapfile -t ARCHIVOS < <( find -type f -a \( -iname "*.jpg" -o -iname "*.jpeg" \) )

echo -e "\n\nLARGO ARR:"
echo ${#ARCHIVOS[@]}

# crea carpeta para almacenar imgs pequeñas
mkdir -p $DIRNAME

echo -e "\n\nARCHIVOS:\n"

for i in ${!ARCHIVOS[@]}; do
	echo -e "\n${i}. ${ARCHIVOS[$i]}" 
	ANCHO=`./dimension.sh "${ARCHIVOS[$i]}"`
	echo $ANCHO 
	if [[ $ANCHO -le 500 ]]; then
		echo -e "copiando ${ARCHIVOS[$i]} ....\n" 
		cp "${ARCHIVOS[$i]}" $DIRNAME 
	fi
done


