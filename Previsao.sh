#!/bin/bash
#Autor: Ruben Bruno Cavalcante de Menezes 
#Em caso de bugs enviar um email para
#email: rubenbruno@outlook.com
#Script de previsão do tempo
MENU () {
clear
echo
echo " MENU "
echo 
echo
echo " 1 - Previsão do tempo ( Cidade e Aeroportos) " 
echo " 2 - Previsão do tempo do Aeroporto de Vitória ES "
echo " 3 - Previsão do tempo do Aeroporto Santos Dumont Santos Dumont	RJ "
echo " 4 - Previsão do tempo do Aeroporto Internacional do Rio de Janeiro Galeão-Antônio Carlos Jobim	Galeão	RJ "
echo 
echo " S - Sair "
echo
echo
read -p "Informe o número da opção desejada : " num 
case $num in
	
	1) 	read -p "Informe o Nome do local (Cidade e Aeroportos): " cal
	    curl wttr.in/$cal?lang=pt
	    pausa
		echo
		MENU
	;;
	
	2)	echo Aeroporto de Vitória – Eurico de Aguiar Salles Vitória	ES	Brasil	
		curl wttr.in/VIX?lang=pt
		pausa
		echo

		MENU	
		

	;;
	

	
	3)	echo Aerorporto Santos Dumont	Santos Dumont	RJ	Brasil	
		curl wttr.in/SDU?lang=pt
		pausa
		echo

		MENU	
		

	;;
    

    4) 	echo Aeroporto Internacional do Rio de Janeiro / Galeão-Antônio Carlos Jobim	Galeão	RJ	Brasil	
		curl wttr.in/GIG?lang=pt
		pausa
		echo

		MENU	
		
		
		

	;;

	S) 
	    echo
		echo "Você escolheu SAIR" 	
		echo
		exit
	;;
	
	*)	
		echo
		echo "Não entendi sua opção. Carectere inesperado!"
		echo "Pressione qualquer tecla para continuar!"
		pausa
		MENU
		
		;;		
		esac

		echo 
		}
		pausa () {
			read -p "$*"
			}
			MENU
