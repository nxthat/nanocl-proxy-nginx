FROM ubuntu:jammy

ENV TZ="Europe/Paris"
RUN apt-get update -y
RUN apt-get install -y tzdata
RUN apt-get install -y nginx
RUN apt-get install -y nginx-extras
RUN apt-get install -y certbot python3-certbot-nginx

USER nginx

COPY ./baseconfig.conf /etc/nginx/nginx.conf
