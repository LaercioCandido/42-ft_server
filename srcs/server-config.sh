# Cria o diretório onde os arquivos serão salvos
mkdir /var/www/localhost

# Entra no diretório raiz
cd /root

# Movendo o arquivo que mostra informações do php para o localhost
mv /root/info.php /var/www/localhost/

# Instala o phpMyAdmin
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-english.tar.gz
tar -xzvf phpMyAdmin-5.0.2-english.tar.gz
rm -rf  phpMyAdmin-5.0.2-english.tar.gz
mv  phpMyAdmin-5.0.2-english /var/www/localhost/phpmyadmin
cp /root/nginx.conf /etc/nginx/sites-available/default
cp /root/config.inc.php /var/www/localhost/phpmyadmin/config.inc.php
chown -R www-data:www-data /var/www/localhost/phpmyadmin
