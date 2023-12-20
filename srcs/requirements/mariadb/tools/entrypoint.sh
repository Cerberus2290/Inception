#!/bin/bash

mkdir -p /var/run/mysqld
chown mysql:mysql /var/run/mysqld
chmod 755 /var/run/mysqld

service mysql start
sh /create_user.sh

exec mysqld_safe