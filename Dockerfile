FROM ubuntu:xenial
MAINTAINER Timo Bruderek <timo@openvario.org>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    texlive-base \
    texlive-latex-extra \
    texlive-generic-extra 

RUN apt-get install -qy \
    imagemagick \
    make git \
    && rm -rf /var/lib/apt/lists/*

RUN sed -i 's#<policy domain="coder" rights="none" pattern="PDF" />#<policy domain="coder" rights="read|write" pattern="PDF" />#' /etc/ImageMagick-6/policy.xml

WORKDIR /data
VOLUME ["/data"]
