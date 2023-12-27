adduser ftp-user --disabled-password --gecos "" --shell /bin/bash --home /var/www/wordpress/upload

sleep 2

echo ftp-user:ftp-passwd | chpasswd