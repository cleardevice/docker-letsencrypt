FROM ubuntu:16.04

MAINTAINER cd "cleardevice@gmail.com"

ENV TERM xterm
RUN apt update && \
    apt install -y nano git

RUN cd / && git clone https://github.com/letsencrypt/letsencrypt && \
    cd /letsencrypt && ./letsencrypt-auto --help

WORKDIR /letsencrypt
