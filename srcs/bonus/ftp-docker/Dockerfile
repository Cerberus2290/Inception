FROM debian:buster

EXPOSE 20 21

RUN apt-get update && \
    apt-get install -y \
    proftpd-basic \
    openssl

COPY ./conf/custom.conf /etc/proftpd/conf.d/custom.conf
RUN chmod +x /etc/proftpd/conf.d/custom.conf

COPY ./conf/create_user.sh /create_user.sh
RUN chmod +x /create_user.sh && \
    bash /create_user.sh

CMD [ "proftpd", "--nodaemon" ]