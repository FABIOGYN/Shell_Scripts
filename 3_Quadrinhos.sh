#!/bin/bash

##Script para organizar e contabilizar quadrinhos

#Parte 00 - Debug

#Parte 01 - Gerar arquivo com relacao de quadrinhos;

##Declarando variavel
diretorio=$1

echo "Iniciando Listagem:";
echo "";

function Listar() 
{

	#set -vx;
	find $diretorio -iname *.cb[r-z] > /scripts/teste/Relacao_Quadrinhos1.txt;

	echo "Listagem salva em /scripts/teste/Relacao_Quadrinhos.txt";
	echo "";

	#set +vx;
}

##Testando se a variavel com o caminho a ser verificado foi passada.

#if [ -n $diretorio ];
#then
	Listar;
#else
#	echo "Diretorio nao informado, deseja continuar com o scritp? S/n ";
#	echo "";
#	read resposta1;
#	echo $resposta1;
#	echo "";
#
#	echo "Resposta se deseja continuar: $resposta1";
#	echo "";
#
#fi

#echo "Resposta se deseja continuar: $resposta1";

#Parte 02 - Formatando os nomes dos arquivos;

echo "Iniciando a formatação dos nomes:";
echo "";

##Habilitando Debug

#set -vx;

function Remover_espacos() { 

while read espacos;
do
	
	#Remover os espacos em branco dos nomes de arquivos
	echo "Removendo espacos:";
	echo "";
	Arquivo=`sed 's/ //g'`;
	echo $(mv "$espacos" "$Arquivo");
	echo "Espacos removidos.";
	echo "";

done < /scripts/teste/Relacao_Quadrinhos1.txt	
}

function recortar_nomes() {

while read caminhos;
do

	#Remover do inicio dos nomes a parte dos diretorios.
	echo "Removendo a parte dos diretorios:";
	echo "";
	Arquivo=$(sed 's/\/media\/fabio\/Seagate\/Quadrinhos\///g');
	echo "Parte dos diretorios removidos.";
	echo "";

done < /scripts/teste/Relacao_Quadrinhos

}

function remover_acentos() {

while read acentos;
do

	#Removendo acentos e caracteres especiais
	echo "Remover acentos e caracteres especiais";
	echo "";
	Arquivo=$(iconv -t 'ascii//TRANSLIT');
	
	#echo -e "$Arquivo";
	#Acento=`echo $file | sed 's/áÁãÃàÀéÉíÍ/aAaAaAeEiI/g'`; 
	#echo "";
	echo "Acentos e caracteres especiais removidos";


done < /scripts/teste/Relacao_Quadrinhos1.txt;
}

Remover_espacos;
#recortar_nomes;
#remover_acentos;
#set +vx;
