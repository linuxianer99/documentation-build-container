FROM ubuntu:xenial
MAINTAINER Timo Bruderek <timo@openvario.org>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    texlive-base \
    texlive-latex-extra
    texlive-generic-extra \
    make git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]
