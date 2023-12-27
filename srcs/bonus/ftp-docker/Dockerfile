FROM debian:buster

EXPOSE 20 21 989 990 50000-50110

RUN apt-get update && \
    apt-get install -y \
    proftpd-basic \
    openssl

RUN openssl req -x509 -days 365 -nodes -newkey rsa:4096 \
    -keyout /etc/ssl/private/tstrassb.key \
    -out /etc/ssl/certs/tstrassb.crt -sha256 -subj "/CN=tstrassb.42.fr"

COPY ./conf/custom.conf /etc/proftpd/conf.d/custom.conf
RUN chmod +x /etc/proftpd/conf.d/custom.conf

COPY ./conf/create_user.sh /create_user.sh
RUN chmod +x /create_user.sh && \
    bash /create_user.sh

CMD [ "proftpd", "--nodaemon" ]