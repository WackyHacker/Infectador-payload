# Infectador-payload
Herramienta perfecta para crear cargas utiles (Backdoors) a una alta velocidad, esta herramienta preside de diferentes opciones, incluiendo la opcion de poder subir tu carga util a un servidor web (apache2).

INTERFAZ: Grafica
IMPORTANTE: Para utilizar esta herramieta debes tener conocimientos medios en Linux ya que sino no sabras que es lo que estas haciendo.
HERRAMIENTA: Automatizada

## Pre-requisitos 📋

* [Metaploit](http://www.dropwizard.io/1.0.2/docs/) 
* [xterm](http://www.dropwizard.io/1.0.2/docs/) 

**Instalacion**
```
sudo apt-get install -y postgresql
```
```
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall
```
## Instalacion 
```
git clone https://github.com/WackyHacker/Infectador-payload
```
```
cd Infectador-payload 
```
```
sudo su
```
```
bash Infectador-payload.sh
```

## Construido con 🛠️

* [Metasploit](https://www.metasploit.com/) - Despliege de carga util
* [Msfvenom](https://www.metasploit.com/) - Creador de cargas utiles
* [Apache2](https://httpd.apache.org/) - Servidor web

## Autor ✒️

* **WackyHacker** - *Todo el proyecto* - [WEIK](https://github.com/WackyHacker)

## Licencia 📄

Este proyecto esta bajo Licencia - mira el archivo [License.md](https://github.com/WackyHacker/Infectador-payload/blob/master/License.md) para mas detalles

## ¿Como funciona?

Antes de ejecutar la herramienta con 'sudo bash Infectador-payload', ejecuta primero 'sudo su' y después ejecuta 'bash' Infectador-payload, si no se hace puede que de problemas en el futuro.


![Captura de pantalla (34)](https://user-images.githubusercontent.com/69093629/104134506-41d4f600-538a-11eb-8aff-79a331979e98.png)


Una vez la herramienta ya esta ejecutada correctamente, se vera algo asi.


![Captura de pantalla (32)](https://user-images.githubusercontent.com/69093629/104134712-c5431700-538b-11eb-8f40-816c6b25a571.png)


Utilizarla es muy sencillo solo hay que seleccionar la opción a utilizar (la ultima esta en mantenimiento), una vez elegida debemos seleccionar la carga útil de nuestra preferencia.

![videosito](https://user-images.githubusercontent.com/69093629/104136758-66d06580-5398-11eb-9526-58302e9f286b.gif)

Una vez elegidas las opciones de preferencia a utilizar, hay que escribir el 'LHOST' , 'LPORT'>[Recomendable: 4444], el nombre de tu Backdoor sin su extensión [EX: exe, py] , y finalmente la ruta donde quieres guardar el Backdoor (ojo si eliges que el ataque se efectúe fuera de la red LAN >ngrok< la víctima no podra descargar e instalar el Backdoor a menos que este conectada en la misma red WI-FI que tu) si eliges sin querer subir tu Backdoor a un servidor apache2, para arreglarlo o pulsamos CTRL + C para salir de la herramienta, o puedes acceder a la ruta donde está alojado el servidor apache2 con este comando 'cd /var/www/html/' y tu Backdoor estará ahí, para no tener problemas, cuando te pida que digites una ruta para guardar el Backdoor, pulsa 'ENTER' y se te guardará automáticamente en el mismo directorio que estás ahora mismo en la carpeta Backdoors.


Y se empezará a crear el Backdoor satisfactoriamente...

![video2](https://user-images.githubusercontent.com/69093629/104136537-2cb29400-5397-11eb-8d1d-3ffdea3bd598.gif)
