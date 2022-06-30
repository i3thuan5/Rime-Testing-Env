FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=ASIA/Taipei

RUN apt update \
  && apt install -y build-essential cmake python git \
  && apt upgrade -y

# Build librime
RUN git clone --recursive https://github.com/i3thuan5/librime.git /librime/
WORKDIR /librime/

RUN sed -i 's/sudo //g' travis-install-linux.sh
RUN bash -eux travis-install-linux.sh

RUN make
RUN make debug

# Install Python Behave
RUN apt-get install -y python3 python3-pip
RUN pip3 install behave
## https://github.com/docker-library/python/blob/f82205cde8f0a5ffa276103a50d843edced67757/3.5/stretch/Dockerfile#L12-L14
ENV LANG C.UTF-8
