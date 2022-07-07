FROM nginx:latest

ENV TZ="Europe/Paris"
RUN apt-get update -y

RUN apt-get install -y nginx-extras
RUN apt-get install -y certbot python3-certbot-nginx

COPY ./baseconfig.conf /etc/nginx/nginx.conf
