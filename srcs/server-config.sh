# Cria o diretório onde os arquivos serão salvos
mkdir /var/www/localhost

# Entra no diretório raiz
cd /root

# Instala o phpMyAdmin
tar -xzvf phpMyAdmin-5.0.2-all-languages.tar.gz
rm -rf  phpMyAdmin-5.0.2-all-languages.tar.gz
mv  phpMyAdmin-5.0.2-all-languages /var/www/localhost/phpmyadmin
cp /root/nginx.conf /etc/nginx/sites-available/default
cp /root/config.inc.php /var/www/localhost/phpmyadmin/config.inc.php
chown -R www-data:www-data /var/www/localhost/phpmyadmin

# Configura superuser phpmyadmin
service mysql start
echo "CREATE DATABASE wordpress;" | mysql -u root
echo "CREATE USER 'lcandido'@'localhost' IDENTIFIED BY '1234';" | mysql -u root
echo "GRANT ALL PRIVILEGES ON *.* TO 'lcandido'@'localhost' WITH GRANT OPTION;" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root

# Database e User do wordpress
echo "CREATE DATABASE wordpress;" | mysql -u root
echo "CREATE USER 'wordpress'@'localhost' IDENTIFIED BY '1234';" | mysql -u root
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost' WITH GRANT OPTION;" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root

# Instala o wordpress
tar -xzvf wordpress-5.5.1-pt_BR.tar.gz
rm -rf wordpress-5.5.1-pt_BR.tar.gz
# cp wp-config.php /wordpress/wp-config.php
mv wordpress /var/www/localhost/wordpress
cp wp-config.php /var/www/localhost/wordpress

# Configura o SSL
openssl req -newkey rsa:4096 -days 365 -nodes -x509 \
	-subj "/C=BR/ST=Sao Paulo/L=Sao Paulo/O=42SP/OU=lcandido/CN=localhost/emailAddress=lcandido@student.42sp.org" \
	-keyout localhost.dev.key \
	-out localhost.dev.crt  2>> /dev/null
mv localhost.dev.crt /etc/ssl/certs/
mv localhost.dev.key /etc/ssl/private/
chmod 600 /etc/ssl/certs/localhost.dev.crt /etc/ssl/private/localhost.dev.key

