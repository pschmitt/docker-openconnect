FROM fedora:25
MAINTAINER Philipp Schmitt <philipp@schmitt.co>

RUN dnf makecache && \
    dnf install -y openconnect && \
    dnf clean all && \
    rm -rf /var/cache/dnf/*

ENTRYPOINT ["/usr/bin/openconnect"]
