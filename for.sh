#!/bin/bash

for anno in $(seq 2017 2020)
do
	for mes in $(seq 1 12)
	do
		libro=`printf $anno%02d $mes`
		echo $libro
	done
done

