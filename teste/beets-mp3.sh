#!/bin/bash

#"Teste de info de mp3 baseado na dica encontrada em balaioti.blogspot.com.br/2011/10"
#"Encontra o tempo de cada arquivo mp3."

for n in *.mp3
do
	#Tirando a extensao .mp3 dos nomes dos arquivos
	NAME=`echo "$n" | sed -e 's/\.mp3//g'`;
	echo "$NAME";

	#Recebe a variavel $NAME e continua as alteracoes, trocando - por .
	NAME=`echo "$NAME" | sed -e 's/-/./g'`;
	echo "$NAME";
	
	#NAME=`echo "$NAME" | sed -e 's/_/./g'`
	#NAME=`echo "$NAME" | sed -e 's/\ \././g'`

	#M=`mp3info -p "%m" "$n"`
	#N=`mp3info -p "%s" "$n"`
	
	#if [ $S -le 9 ];
	#then
	#	S="0$S"
	#fi
	#echo "$NAME  ($M:$S)"


done	
