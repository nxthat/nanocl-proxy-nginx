FROM ubuntu:jammy

RUN apt-get update -y
RUN apt-get install nginx-extras -y
RUN apt-get install certbot python3-certbot-nginx -y

COPY ./baseconfig.conf /etc/nginx/nginx.conf
