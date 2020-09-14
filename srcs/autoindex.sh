#!/bin/bash

nginx_file='/etc/nginx/sites-available/default'

grep "autoindex on;" "$nginx_file" > /dev/null
if [ $? -eq 0 ]; then
	echo "Estado atual do autoindex: ON"
	sed -i 's/autoindex on/autoindex off/' "$nginx_file"
	autoindex="OFF";
else
	echo "Estado atual do autoindex: OFF"
	sed -i "s/autoindex off/autoindex on/" "$nginx_file"
	autoindex="ON";
fi
echo "Alterando o estado do autoindex e reiniciando o servidor..."
service nginx restart
echo "Servidor ligado"
echo "Estado atual do autoindex: $autoindex"
