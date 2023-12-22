adduser ftp-user --disabled-password --gecos "" --shell /bin/false --home /var/www/upload

sleep 2

echo ftp-user:ftp-passwd | chpasswd