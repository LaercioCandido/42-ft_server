# Cria o diretório onde os arquivos serão salvos
mkdir /var/www/localhost

# Entra no diretório raiz
cd /root

# Movendo o arquivo que mostra informações do php para o localhost
mv /root/info.php /var/www/localhost/

# Instala o phpMyAdmin
# wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz
tar -xzvf phpMyAdmin-5.0.2-all-languages.tar.gz
rm -rf  phpMyAdmin-5.0.2-all-languages.tar.gz
mv  phpMyAdmin-5.0.2-all-languages /var/www/localhost/phpmyadmin
cp /root/nginx.conf /etc/nginx/sites-available/default
cp /root/config.inc.php /var/www/localhost/phpmyadmin/config.inc.php
chown -R www-data:www-data /var/www/localhost/phpmyadmin

# Database e User do wordpress
echo "CREATE DATABASE wordpress;" | mysql -u root
echo "CREATE USER 'wordpress'@'localhost' IDENTIFIED BY '1234';" | mysql -u root
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost' WITH GRANT OPTION;" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root

# Configurando superuser phpmyadmin
service mysql start
echo "CREATE DATABASE wordpress;" | mysql -u root
echo "CREATE USER 'lcandido'@'localhost' IDENTIFIED BY '1234';" | mysql -u root
echo "GRANT ALL PRIVILEGES ON *.* TO 'lcandido'@'localhost' WITH GRANT OPTION;" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root

# Instala o wordpress
# wget https://br.wordpress.org/latest-pt_BR.tar.gz
tar -xzvf wordpress-5.5.1-pt_BR.tar.gz
rm -rf wordpress-5.5.1-pt_BR.tar.gz
# cp wp-config.php /wordpress/wp-config.php
mv wordpress /var/www/localhost/wordpress
cp wp-config.php /var/www/localhost/wordpress


