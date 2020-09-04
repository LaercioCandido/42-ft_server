# Configurações

mkdir /var/www/localhost

cp /root/nginx.conf /etc/nginx/sites-available/default

cp /root/info.php /var/www/localhost/

# Instala o phpMyAdmin

wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-english.tar.gz

tar -xzvf phpMyAdmin-5.0.2-english.tar.gz

rm -rf  phpMyAdmin-5.0.2-english.tar.gz

mv  phpMyAdmin-5.0.2-english /var/www/localhost/phpmyadmin

chown -R www-data:www-data /var/www/localhost/phpmyadmin
