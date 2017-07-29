#!/bin/bash

#Exemplo de comando
# echo "Fábio Sério" | iconv -f "utf-8" -t "ascii//TRANSLIT"
#Saida do comando acima:
#Fabio Serio


for name in *.txt;
do
	newname=$(echo "$name" | iconv -f "utf-8" -t "ascii//TRANSLIT");
	mv "$name" "$newname";
	
done;
