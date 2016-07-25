FROM alpine:3.4

MAINTAINER Stefan Cocora <stefan.cocora@gmail.com>

RUN apk --update add \
    bash \
    curl \
    iproute2 \
    jq \
    lsof \
    mtr \
    ngrep \
    openssl \
    procps \
    tcptraceroute \
    tree \
    vim

CMD ["/bin/sleep", "3600"]
