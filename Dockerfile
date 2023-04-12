FROM debian:bullseye
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    texlive-full \
    texlive-luatex \
    biber \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]
