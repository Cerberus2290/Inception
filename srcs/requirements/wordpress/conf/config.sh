#!/bin/bash

wp config create --dbname=$DB_NAME \
                --dbuser=$DB_USER \
                --dbpass=$DB_PASSWD \
                --dbhost=$DB_HOST \
                --path='/var/www/wordpress' \
                --allow-root

wp core install --title=$WP_TITLE \
                --admin_user=$WP_ADMIN_USER \
                --admin_password=$WP_ADMIN_PASSWD \
                --admin_email=$WP_ADMIN_EMAIL \
                --url=$WP_URL \
                --path='/var/www/wordpress' \
                --allow-root

wp user create $WP_USER $WP_USER_EMAIL \
                --role=author \
                --user_pass=$WP_USER_PASSWD \
                --path='/var/www/wordpress' \
                --allow-root

chown -R www-data:www-data /var/www/wordpress/

php-fpm7.3 -F