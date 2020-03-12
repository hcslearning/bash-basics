#!/bin/bash

base=$1

for anno in $(seq 2017 2020)
do
	for mes in $(seq 1 12)
	do
		libro=`printf $anno%02d $mes`
		dir="$base/$anno/Compras/DTE/$libro"
		echo $dir
		mkdir -p $dir
	done
done

