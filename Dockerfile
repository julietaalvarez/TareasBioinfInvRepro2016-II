FROM biodockr/biodocker:latest

#Dockerfile fastXtools
#Este dockerfile jala la versión 0.0.14 de fastxtools

#Primero descargamos la última imagen de biodocker
docker pull biodckr/biodocker
docker run --rm biodockr/biodocker bash
#Después enlistamos todas las imágenes existenentes en docker para poder entrar a biodocker e instalar fastxtools
docker ps -a
#llamar a la imagen de biodocker, que en mi caso empieza con "c5"
docker start c5
#entrar a biodocker
docker exec -it c5 /bin/bash

#Descargar fastxtools
wget http://cancan.cshl.edu/labmembers/gordon/files/fastx_toolkit-0.0.14.tar.bz2 
tar -xjf fastx_toolkit-0.0.14.tar.bz2
cd fastx_toolkit-0.0.14
./configure
make
sudo imake install
cd ..
rm -rf fas* lib*
