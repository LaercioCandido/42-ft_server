# Baixa a imagem debian buster do Dockerhub
FROM debian:buster

# Instala e atualiza os pacotes apt, nginx, mariadb, php
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y nginx \
    mariadb-server \
    php7.3 \
    php-fpm \
    php-mysql \
    php-cli \
    php-mbstring \
    wget

# Copia a pasta srcs do host para a pasta root do container
COPY srcs /root

# Executa o server-config.sh, q faz configurações gerais
RUN bash /root/server-config.sh

# A partir do bash executa o start.sh (que inicia o nginx, mysql)
ENTRYPOINT bash /root/start.sh

# Define o command bash para permitir interação 
CMD bash
