#!/bin/bash

echo "CRIANDO diretorios";

mkdir /publico /adm /ven /sec

echo "CRIANDO grupos";

groupadd GRP_ADM GRP_VEN GRP_SEC


echo "CRIANDO USUARIOS";
userdd carlos -m -s /bin/bash -p $(openssl passwd -crypt curso) -G GRP_ADM
userdd maria -m -s /bin/bash -p $(openssl passwd -crypt curso) -G GRP_AD
userdd joao -m -s /bin/bash -p $(openssl passwd -crypt curso) -G GRP_AD

userdd debora -m -s /bin/bash -p $(openssl passwd -crypt curso) -G GRP_VEN
userdd sebastina -m -s /bin/bash -p $(openssl passwd -crypt curso) -G GRP_VEN
userdd roberto -m -s /bin/bash -p $(openssl passwd -crypt curso) -G GRP_VEN

userdd josefina -m -s /bin/bash -p $(openssl passwd -crypt curso) -G GRP_SEC
userdd amanda -m -s /bin/bash -p $(openssl passwd -crypt curso) -G GRP_SEC
userdd rogerio -m -s /bin/bash -p $(openssl passwd -crypt curso) -G GRP_SEC

echo "PERMISSAO DE DIRETORIO";
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /adm

echo "CABO";