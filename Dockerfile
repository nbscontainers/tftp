FROM docker.io/alpine:latest

RUN apk add --no-cache dnsmasq

COPY dnsmasq.conf /etc/dnsmasq.conf

VOLUME ["/tftp"]

EXPOSE 69/udp

ENTRYPOINT ["/usr/sbin/dnsmasq", "-k", "-C", "/etc/dnsmasq.conf"]
