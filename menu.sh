#!/bin/bash

clear
while true
do
clear
echo ""
echo "	    System ADM v1.0 menu "
echo "
	Opcao	Acao
	===========================
	  1	Escaneiar Site
	  2	Monitorar Processos
	  3	Monitorar Memoria
	  4	Meu IP externo
	  5	Sair
	===========================
	Escolha uma das Opcoes (0-4)"
read opcao
case "$opcao"
	in
	1) echo "Informe um host ou IP:"
	read host
	echo ""
	echo "Tentando comunicacao com" #host "aguarde..."
	ping -q -c1 $host > /dev/null
	if [ $? -ne 0 ]
	then
		echo "Conexao com:" $host "...[FALHOU]"
	else
		echo "Conexao com:" $host "...[Ok]"
	fi
	sleep 4
	;;
	2) top
	sleep 4
	;;
	3) cat /proc/cpuinfo
	sleep 4
	;;
	4) curl ifconfig.co
	sleep 4
	;;
	5) exit
	;;
	*) echo "Somente as opcoes de 0 a 4"
	sleep 3
	;;
esac
done
exit
