cd /var/www/wordpress
wp config create --allow-root
wp core config --dbhost=$DB_HOST \
                --dbname=$DB_NAME \
                --dbuser=$DB_USER \
                --dbpass=$DB_PASSWD \
                --allow-root

wp core install --title=$WP_TITLE \
                --admin_user=$WP_ADMIN_USER \
                --admin_password=$WP_ADMIN_PASSWD \
                --admin_email=$WP_ADMIN_EMAIL \
                --url=$WP_URL \
                --allow-root

wp user create $WP_USER $WP_USER_EMAIL \
                --role=autor \
                --user_pass=$WP_USER_PASSWD \
                --allow-root

cd -

php-fpm7.3 -F
