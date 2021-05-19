FROM ubuntu:16.04
LABEL author="欧德之怒"
ADD sources.list /etc/apt/sources.list
ADD nginx_signing.key /home/nginx_signing.key
RUN apt -y update; \
    apt-key add /home/nginx_signing.key; \
    apt -y install apt-mirror nginx  vim net-tools systemd-sysv;
ADD nginx.conf /etc/nginx/nginx.conf
ADD mirror.list /etc/apt/mirror.list
EXPOSE 7070
ENTRYPOINT nginx;sleep infinity