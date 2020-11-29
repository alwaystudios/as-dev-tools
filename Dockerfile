FROM nginx

RUN apt-get update
RUN apt-get install -y vim

WORKDIR /etc/nginx

RUN rm /etc/nginx/conf.d/default.conf
ADD default.conf /etc/nginx/conf.d/default.conf

