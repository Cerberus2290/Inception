#!/bin/bash

cd /var/www/wordpress

wp core install --title=$WP_TITLE \
                --admin_user=$WP_ADMIN_USER \
                --admin_password=$WP_ADMIN_PASSWD \
                --admin_email=$WP_ADMIN_EMAIL \
                --url=localhost \
                --path='/var/www/wordpress' \
                --allow-root

wp user create $WP_USER $WP_USER_EMAIL \
                --role=author \
                --user_pass=$WP_USER_PASSWD \
                --path='/var/www/wordpress' \
                --allow-root

wp config set WP_CACHE true --allow-root
wp config set WP_REDIS_HOST redis --allow-root
wp config set WP_REDIS_PORT 6379 --allow-root
wp config set WP_REDIS_PASSWORD '' --allow-root

wp plugin install redis-cache --activate --allow-root

wp redis enable --allow-root

chown -R www-data:www-data /var/www/wordpress/

exec php-fpm7.3 -F