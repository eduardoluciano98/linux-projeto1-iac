#!/bin/bash

echo "Realizando inicio da criação do servidor de arquivos... "
echo "Criando diretórios publico, adm, ven e sec... "

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados com sucesso !!! "

echo "Iniciando a criação dos grupos GRP_ADM, GRP_VEN e GRP_SEC... "

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com sucesso !!! "

echo "Realizando a criação dos usuários... "

useradd carlos -m -c "Carlos Pereira" -s /bin/bash
useradd maria -m -c "Maria Pereira" -s /bin/bash
useradd joao -m -c "João Pereira" -s /bin/bash

useradd debora -m -c "Débora Mesquita" -s /bin/bash
useradd sebastiana -m -c "Sebastiana Mesquita" -s /bin/bash
useradd roberto -m -c "Roberto Mesquita" -s /bin/bash

useradd josefina -m -c "Josefina Oliveira" -s /bin/bash
useradd amanda -m -c "Amanda Oliveira" -s /bin/bash
useradd rogerio -m -c "Rogerio Oliveira" -s /bin/bash


echo "Usuários criados com sucesso !!!"

echo "Adicionando os usuários aos respectivos grupos..."

adduser carlos GRP_ADM
adduser maria GRP_ADM
adduser joao GRP_ADM
adduser debora GRP_VEN
adduser sebastiana GRP_VEN
adduser roberto GRP_VEN
adduser josefina GRP_SEC
adduser amanda GRP_SEC
adduser rogerio GRP_SEC

echo "Usuários adicionados aos grupos com sucesso !!!"

echo "Alterando grupo proprietário do diretórios e definindo permissão de acesso... "

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


echo "Script finalizado com sucesso !!!"

