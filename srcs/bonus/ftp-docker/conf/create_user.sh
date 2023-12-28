#!/bin/bash

adduser $FTP_USER --disabled-password --gecos "" --shell /bin/bash --home /var/www/upload

sleep 2

echo $FTP_USER:$FTP_PASS | chpasswd

exec proftpd --nodaemon