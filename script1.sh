#!/bin/bash

echo "Criacao de diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /ger

echo  "Criando grupo de usuarios"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_GER

echo "Criando Usuarios nos Respectivos Grupos"

useradd fernando -c "Fernando" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
passwd fernando -e
useradd john -c "John" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
passwd john -e
useradd renato -c "Renato" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
passwd renato -e

useradd priscila -c "Priscila" -s /bin/bash -m -p $(openssl passwd Senha456) -G GRP_VEN
passwd priscila -e
useradd edevaldo -c "Edevaldo" -s /bin/bash -m -p $(openssl passwd Senha456) -G GRP_VEN
passwd edevaldo -e
useradd marcelo -c "Marcelo" -s /bin/bash -m -p $(openssl passwd Senha456) -G GRP_VEN
passwd marcelo -e

useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd Senha789) -G GRP_GER
passwd rogerio -e
useradd karina -c "Karina" -s /bin/bash -m -p $(openssl passwd Senha789) -G GRP_GER
passwd karina -e
useradd jose -c "Jose" -s /bin/bash -m -p $(openssl passwd Senha789) -G GRP_GER
passwd jose -e

echo "Especificacoes de permissoes, nos grupos e com cada usuario"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_GER /ger

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /ger

echo "Concluido"