#!/bin/bash

echo "Criando diretórios"

# Criando os diretorios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários"

# Criando os grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"

# Criando os usuarios
useradd carlos -m -s /bin/bash -p $(openssl passwd -1 123)
useradd maria -m -s /bin/bash -p $(openssl passwd -1 123)
useradd joao -m -s /bin/bash -p $(openssl passwd -1 123)
useradd debora -m -s /bin/bash -p $(openssl passwd -1 123)
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 123)
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 123)
useradd josefina -m -s /bin/bash -p $(openssl passwd -1 123)
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 123)
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 123)

echo "Adicionando usuários aos respectivos grupos"

# Adicionando usuarios aos grupos

usermod -aG GRP_ADM carlos
usermod -aG GRP_ADM maria
usermod -aG GRP_ADM joao

usermod -aG GRP_VEN debora
usermod -aG GRP_VEN sebastiana
usermod -aG GRP_VEN roberto

usermod -aG GRP_SEC josefina
usermod -aG GRP_SEC amanda
usermod -aG GRP_SEC rogerio

echo "Adicionando permissões das pastas"

# Permissoes das pastas

chmod 777 /publico

chown root:GRP_ADM /adm
chmod 770 /adm

chown root:GRP_VEN /ven
chmod 770 /ven

chown root:GRP_SEC /sec
chmod 770 /sec

echo "Fim"
