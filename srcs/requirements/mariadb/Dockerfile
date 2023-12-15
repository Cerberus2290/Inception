FROM debian:buster

EXPOSE 3306

ARG DB_NAME=${DB_NAME}
ARG DB_USER=${DB_USER}
ARG DB_PASSWD=${DB_PASSWD}
ARG DB_ROOT_PASSWD=${DB_ROOT_PASSWD}

RUN apt-get update
RUN apt-get install -y mariadb-server
RUN rm -rf /var/lib/apt/lists/*

RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d

COPY tools/create_user.sh /
RUN bash ./create_user.sh

RUN rm -rf create_user.sh

CMD [ "mysql_safe" ]