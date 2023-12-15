FROM debian:buster

RUN apt-get update
RUN apt-get install -y nginx openssl
RUN rm -rf /var/lib/apt/lists/*

COPY ./conf/nginx.conf /etc/nginx/sites-available/default

RUN openssl req -x509 -days 365 -nodes -newkey rsa:4096 \
    -keyout /etc/ssl/private/tstrassb.key \
    -out /etc/ssl/certs/tstrassb.crt -sha256 -subj "/CN=tstrassb.42.fr"

CMD [ "nginx", "-g", "daemon off;" ]