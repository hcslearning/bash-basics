#!/bin/bash

for file in /home/zero/Pictures/*.webp
do
	echo $file

	###########################
	# EXTRACCION DATOS ARCHIVO
	###########################

	# forma #1
	filename=$(basename "$libro")
	extension="${filename##*.}"
	
	#forma #2
	filename="${filename%.*}"
	extension=$(echo $extension | tr '[A-Z]' '[a-z]')
done

