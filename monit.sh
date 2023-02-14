#!/bin/bash

# Instalando dependencias
apt install zlib1g-dev libpam0g-dev libssl-dev libtool bison flex autoconf gcc make wget sudo curl git -y

# Baixando mmonit
wget https://mmonit.com/dist/mmonit-3.7.14-linux-x64.tar.gz

# Descompactando mmonit
tar xzvf mmonit-3.7.14-linux-x64.tar.gz

# Adentrando o directorio
cd mmonit-3.7.14/

# Iniciando o mmonit
./bin/mmonit

# Baixando monit repositorio GIT
git clone https://tildeslash@bitbucket.org/tildeslash/monit.git
./bootstrap

# Instalando o monit
#!c 
./configure 
make 
make install
