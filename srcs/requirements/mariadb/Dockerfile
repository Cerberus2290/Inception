FROM debian:buster

EXPOSE 3306

RUN apt-get update && apt-get install -y \
    mariadb-server && \
    rm -rf /var/lib/apt/lists/*

RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d

COPY tools/entrypoint.sh /
RUN chmod +x ./entrypoint.sh

COPY tools/create_user.sh /
RUN chmod +x ./create_user.sh

ENTRYPOINT [ "/entrypoint.sh" ]