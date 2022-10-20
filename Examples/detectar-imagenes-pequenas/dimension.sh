#!/bin/bash

IMAGEN="${1}"

# PROBLEMAS CON ARCHIVOS CON ESPACIOS
#DIMENSION=`identify "$IMAGEN" | cut -f 3 -d' '`

# INTENTO DE CONTEO DE ATRAS HACIA DELANTE CON AWK
DIMENSION=`identify "$IMAGEN" | awk '{print $(NF-6)}' `

ANCHO=`echo $DIMENSION | cut -f 1 -d'x'`
ALTO=`echo $DIMENSION | cut -f 2 -d'x'`
#echo "$ANCHOx$ALTO" 
echo $ANCHO
