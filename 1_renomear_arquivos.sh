#!/bin/bash

##Script para substituir o nome ou partes do nome de arquivos em um diretorio.
##Criado por Fabio Rodrigues Pinto
##Versao: 1.0
##Data da criacao: 09/06/2017

###Manter atualizado e controlar alteracoes.

for file in `ls $1;# | sed 's/Iron Maiden - //g'`;
do
	#ARQ=`echo $file | sed 's:_: :g'`;

	echo $file;
	
	#ARQ=`echo $file | sed 's/Iron Maiden - //g'`;
	
	#mv "$ARQ" $file;
	#echo $ARQ;
done
