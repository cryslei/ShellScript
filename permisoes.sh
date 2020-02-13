#!/bin/bash

echo "Criando pastas A e C #mkdir"
mkdir A
mkdir C
echo "Criando usuarios athos,andre,carlos e cleiton com o camando #useradd e nao o #adduser"
echo ""
useradd athos
echo "usuario athos criado"
useradd andre
echo "usuario andre criado"
useradd carlos
echo "usario carlos criado"
useradd cleiton
echo "usuario cleiton criado"
echo ""
echo ""
echo "Criando grupos redeA e redeC #groupadd"
groupadd redeA
groupadd redeC
echo "grupos criados...."
echo "adicionando usurios ao grupos #gpasswd -a"
gpasswd -a cleiton redeC
gpasswd -a athos redeA
gpasswd -a carlos redeC
gpasswd -a andre redeA
echo "concluido...."
echo "Permissão de grupos para o arquivo #chgrp" 
chgrp redeA A
chgrp redeC C
echo "Permissão para cada grupo acessar determinada pasta #chmod 770"
echo ""
chmod 770 A
chmod 770 C

