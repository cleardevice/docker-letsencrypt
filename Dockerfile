FROM ubuntu:16.04

MAINTAINER cd "cleardevice@gmail.com"

ENV TERM=xterm
RUN apt update -y && apt dist-upgrade -y && \
    apt install -y --no-install-recommends nano ca-certificates letsencrypt && \
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /tmp/* /var/tmp/* && \
    rm -rf /var/lib/apt/lists/*
