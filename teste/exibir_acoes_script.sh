#!/bin/bash

#dir=$a1;

for nome_antigo in *.bkp;
do
	echo "MSG01: Exibindo nome antigo: $nome_antigo";
	echo "";
	
	nome_novo=$(echo "$nome_antigo" | sed 's/bkp/bka/g');
	echo "MSG2: Exibindo o nome novo: $novo_nome";
	echo "";
	
	comando='mv '"$nome_antigo"' '"$nome_novo";
	echo "MSG3: O comando a ser executado eh:"
	echo "$comando";
	echo "";
done



#comanoo=`ls $a1`
#echo "Comando a ser executado: $comando";
