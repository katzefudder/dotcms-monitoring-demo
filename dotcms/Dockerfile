FROM dotcms/dotcms:latest

USER root

RUN apk add wget

# install linux prometheus exporter
RUN cd /tmp && wget https://github.com/prometheus/node_exporter/releases/download/v1.0.0/node_exporter-1.0.0.linux-amd64.tar.gz && \
    tar -zxvf node_exporter-1.0.0.linux-amd64.tar.gz && \
    install node_exporter-1.0.0.linux-amd64/node_exporter /usr/local/bin/

ADD entrypoint.sh /entrypoint.sh

USER 1000000000

ENTRYPOINT ["/sbin/tini", "--", "/entrypoint.sh"]