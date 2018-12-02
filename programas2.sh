#!/bin/bash
#Author: Alejandro Morales, GLUD  -> jalejo999@gmail.com
#Archivo: programas2.sh
#Proyecto: Distro GLUD
#
echo -e "BIENVENIDO; ESTE SCRIPT LE AYUDARA A INSTALAR ALGUNOS PROGRAMAS EN SU DISTRIBUCIÓN";
#echo -e "1 Blender\n2 Netbeans IDE\n3 JAVA\n4 Geany\n5 Gimp\n6 Dia\n7 WxMaxima\n8 Octave\n9 Filezilla\n10 PCB Designer\n11 Inkscape\n12 Nmap\n13 Wireshark\n14 Kile\n15 Gretl\n16 Mono\n17 PHPMyadmin\n18 Scilab\n19 gvSIG\n20 VLC\n21 PgAdmin3\n22 QGIS\n23 Ferret\n24 R\n25 QTCreator\n26Python IDE\n27 Eagle\n28 Docker\n29 Virtual Box\n30 Vagrant\n31 MATLAB\n32 Eclipse IDE\n33 TEAMVIEWER\n34 WINEFISH\n35 Android Studio\n36 ATOM\n37 QT4\n38 SALIR ";
#FUNCIONES DE INSTALACIÓN
function salir {
	exit
}
function atom {
	sudo add-apt-repository -y ppa:webupd8team/atom;
	sudo apt-get update;
	sudo apt-get install atom -y;
	echo "SE HA INSTALADO ATOM"
	#atom;
	#sleep 5s;
}
function blender {
	sudo apt-get install blender -y;
	echo "SE HA INSTALADO BLENDER"
	#blender;
	#sleep 5s;
}
function docker {
	sudo apt-get remove docker docker-engine docker.io;
	sudo apt-get update;
	sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y;
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;
	sudo apt-key fingerprint 0EBFCD88;
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable";
	sudo apt-get update;
	sudo apt-get install docker-ce -y;
	sudo groupadd docker;
	sudo usermod -aG docker $USER;
	echo "SE INSTALO DOCKER"
	#sleep 2s;
}
function filezilla {
	sudo apt-get install filezilla -y;
	#filezilla;
	echo "SE HA INSTALADO FILEZILLA"
	#sleep 5s;
}
function geany {
	sudo add-apt-repository ppa:geany-dev/ppa -y;
	sudo apt update;
	sudo apt install geany geany-common -y;
	echo "SE HA INSTALADO GEANY"
	#geany;
	#sleep 5s;
}
function gimp {
	sudo apt-get update;
	sudo apt-get install -y gimp;
	sudo mv ~/.gimp-2.8 ~/.gimp-2.8.old;
	cp desktop/files/gimpps.zip ~/; cd ~/; unzip gimpps.zip;
    	clear;
	#gimp;
	echo "SE HA INSTALADO GIMP"
	#sleep 5s;
}
function java {
	sudo add-apt-repository -y ppa:webupd8team/java;
	sudo apt-get update;
	sudo apt-get install oracle-java8-set-default -y;
	java -version;
	echo "SE HA INSTALDO JAVA"
	#sleep 2s;
}
function psql {
	sudo apt-get install postgresql postgresql-contrib -y;
	sudo -u postgres psql postgres -y;
	postgres=# \password postgres ;
	postgres=# \q;
	sudo apt-get install pgadmin3 -y;
	#pgadmin3;
	echo "SE HA INSTALDO POSTGRESQL CON PGADMIN 3"
	#sleep 5s;
}
function virtualbox {
	sudo apt-get install virtualbox -y;
	#virtualbox;
	echo "SE HA INSTALADO VIRTUAL BOX"
	#sleep 5s;
}
function eclipse {
	echo "ECLIPSE IDE"
	wget -c https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2018-09/R/eclipse-committers-2018-09-linux-gtk-x86_64.tar.gz&mirror_id=576;	
	gzip -d ~/Descargas/eclipse-committers-2018-09-linux-gtk-x86_64.tar.gz; 
	tar -xvf ~/Descargas/eclipse-committers-2018-09-linux-gtk-x86_64.tar; 
	cd /eclipse/eclipse;
}
function android {
	wget -c https://dl.google.com/dl/android/studio/ide-zips/3.2.0.26/android-studio-ide-181.5014246-linux.zip;
	sudo unzip android-studio-ide-181.5014246-linux.zip -d /opt;
	cd /opt/android-studio/bin;
	sh studio.sh;
}
function dia {
	sudo apt update;
	sudo apt install dia -y;
	#dia;
}
function eagle {
	wget -c https://www.autodesk.com/eagle-download-lin;
	tar -xzvf Autodesk_EAGLE_9.2.2_English_Linux_64bit.tar.gz;
	echo "Descomprimir el paquete eagle-download; no tiene extensión"
	cd eagle-download-lin\ \(1\)/;
	cd eagle-9.2.2/;
	./eagle;
}
function ferret {
	sudo apt-get update;
	sudo apt-get install ferret -y;
	echo "SE HA INSTALADO FERRET"
	#ferret;
}
function gretl {
	sudo apt-get install gretl -y;
	sudo apt-get update ;
	echo "SE HA INSTALADO GRETL"
	#gretl;
}
function gvsig {
	wget http://downloads.gvsig.org/download/gvsig-desktop-testing/dists/2.4.0/builds/2850/gvSIG-desktop-2.4.0-2850-final-lin-x86_64-standard.run;
	chmod +x gvSIG-desktop-2.4.0-2850-final-lin-x86_64-standard.run;
	./gvSIG-desktop-2.4.0-2850-final-lin-x86_64-standard.run;
}
function inkscape {
	sudo add-apt-repository ppa:inkscape.dev/stable -y;
	sudo apt-get update;
	sudo apt-cache policy inkscape;
	sudo apt-get install inkscape -y;
	#inkscape;
	echo "INKSCAPE INSTALADO"
}
function kile {
	sudo apt-get install kile texlive-latex-recommended texlive-latex-extra preview-latex-style texlive-pictures -y;
	sudo apt-get update;
	echo"KILE INSTALADO"
	#kile;
}
function matlab {
	wget -c http://ssd.mathworks.com/supportfiles/downloads/R2018b/deployment_files/R2018b/installers/glnxa64/MCR_R2018b_glnxa64_installer.zip;
	unzip MCR_R2018b_glnxa64_installer.zip;
	echo "SE SOLICITARÁ LA CONSTRASEÑA"
	sudo ./install;
	echo "INSTALADOR DE MATLAB"
}
function mono {
	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF;
	echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list;
	sudo apt update;
	sudo apt install mono-devel -y;
	sudo apt install mono-complete -y;
	sudo apt install mono-dbg -y;
	sudo apt install referenceassemblies-pcl  -y;
	sudo apt install ca-certificates-mono -y;
	sudo apt install mono-xsp4 -y;
	#mono;
}
function netbeans {
	wget -c http://download.netbeans.org/netbeans/8.2/final/bundles/netbeans-8.2-linux.sh;
	chmod +x netbeans-8.2-linux.sh ;
	./netbeans-8.2-linux.sh;
	echo "INSTALADOR DE NETBEANS"
}
function nmap {
	sudo apt-get install zenmap -y;
	#zenmap;
}
function octave {
	sudo apt-get install octave -y;
	sudo apt update;
	#octave;
}
function pcbdesigner {
	sudo apt-get install pcb-gtk  -y;
	sudo apt update;
	#pcb;
}
function phpmyadmin {
	sudo apt-get update;
	sudo apt-get install phpmyadmin -y;
	echo"Se ha instaldo PHPMyAdmin; se recomienda el siguiente url para inciar su interfaz gráfica";
	#https://maslinux.es/guia-facil-para-instalar-phpmyadmin-en-ubuntu/
	echo"https://maslinux.es/guia-facil-para-instalar-phpmyadmin-en-ubuntu/"
}
function python {
	sudo update;
	sudo apt-get install idle -y;
	#idle;
}
function qgis {
	sudo apt-get update;
	sudo apt-get install qgis python-matplotlib python-scipy -y;
	echo "SE HA INSTALDO QGIS"
	#qgis;
}
function qt4 {
	sudo apt-get update
	sudo apt-get install qt4-default -y;
	echo "SE INSTALO QT4-DEFAULT"
}
function qtcreator {
	sudo apt-get install build-essential -y;
	sudo apt --fix-broken install -y;
	sudo apt-get install qtcreator -y;
	sudo apt-get install qt5-default -y;
	sudo apt-get install libfontconfig1 -y;
	sudo apt-get install mesa-common-dev -y;
	sudo apt-get install qt5-doc -y;
	sudo apt-get install qt5-doc-html qtbase5-doc-html -y;
	sudo apt-get install qtbase5-examples -y;
	echo" QT INSTALADO"
}
function rstudio {
	sudo apt-get install r-base -y;
	wget https://download1.rstudio.org/rstudio-xenial-1.1.463-amd64.deb;
	sudo dpkg -i rstudio*.deb;
	echo "SE HA INTALADO R"
}
function scilab {
	sudo apt-get install scilab -y;
	sudo apt-get update;
	echo "SE HA INSTALADO SCILAB"
}
function teamviewer {
	wget -c https://download.teamviewer.com/download/linux/teamviewer_amd64.deb;
	sudo apt-get install qml-module-qtquick-controls -y;
	sudo apt --fix-broken install -y;
	apt-get install -f;
	apt install ./teamviewer_14.0.14470_amd64.deb -y;
	apt install ./teamviewer-host_14.0.14470_amd64.deb -y;
	sudo dpkg -i teamviewer*.deb;
	apt-get install -f;
}
function vagrant {
	sudo apt-get update;
	sudo apt-get install virtualbox dkms -y;
	sudo apt-get install vagrant -y; 
}
function vlc {
	sudo apt install snapd -y;
	sudo snap install vlc #-y;
	#vlc;
	echo"SE HA INSTALADO VLC"
}
function winefish {
	sudo apt-get update;
	sudo apt-get install winefish -y;
	#winefish;
}
function wireshark {
	sudo add-apt-repository ppa:pi-rho/security -y;
	sudo apt-get update ;
	sudo apt-get install wireshark -y;
	sudo apt-get update;
	echo "SE INSTALO WIRESHARK"
	#wireshark;
}
function wxmaxima {
	sudo apt-get install maxima -y;
	sudo apt-get install wx2.8-headers libwxgtk2.8-0 libwxgtk2.8-dev -y;
	sudo apt-get install wxmaxima -y;
	#wxmaxima;
}
#SE INSTALAN TODOS LOS PROGRAMAS UNO SEGUIDO DEL OTRO, NO SE ABREN AL TERMINAR LA INSTALACIÓN
blender     
netbeans  
java    
geany    
gimp
dia
wxmaxima   
octave
filezilla    
pcbdesigner
inkscape
nmap
wireshark
kile
gretl
mono
phpmyadmin
scilab
gvsig
vlc
psql
qgis
ferret
rstudio
qtcreator
python
eagle
docker
virtualbox
vagrant
matlab 
eclipse
teamviewer
winefish
android
atom
qt4

	
