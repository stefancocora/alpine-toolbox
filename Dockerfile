FROM alpine:3.5

MAINTAINER Stefan Cocora <stefan.cocora@gmail.com>

RUN apk update && apk upgrade

RUN apk --update add \
    bash \
    bind-tools \
    curl \
    iproute2 \
    jq \
    lsof \
    mtr \
    ngrep \
    nmap-ncat \
    nmap-nping \
    openssl \
    procps \
    tcptraceroute \
    tree \
    vim

CMD ["/bin/sleep", "3600"]
