FROM nginx:latest

RUN apt-get update -y
RUN apt-get install nginx-extras -y

COPY ./baseconfig.conf /etc/nginx/nginx.conf
