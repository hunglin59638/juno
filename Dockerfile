FROM ubuntu:20.04

LABEL base.image="ubuntu"
LABEL software="juno"
LABEL software.version="1.0.0"
LABEL description="read data generator"
LABEL website="https://github.com/hunglin59638/juno"
LABEL maintainer="Hung-Lin Chen"
LABEL maintainer.email="hunglin59638@gmail.com"

RUN apt-get update && apt-get install -y \
 python3 \
 python3-pip \
 git \
 wget

RUN mkdir -p /opt/juno && mkdir /data
WORKDIR /opt/juno
ADD . .
RUN python3 setup.py install
WORKDIR /data
