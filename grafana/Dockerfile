FROM grafana/grafana:7.1.0

USER root

ENV GF_AUTH_DISABLE_LOGIN_FORM "true"
ENV GF_AUTH_ANONYMOUS_ENABLED "true"
ENV GF_AUTH_ANONYMOUS_ORG_ROLE "Admin"

RUN apk -q update && apk -q add wget

# install linux prometheus exporter
RUN cd /tmp && wget https://github.com/prometheus/node_exporter/releases/download/v1.0.1/node_exporter-1.0.1.linux-amd64.tar.gz && \
    tar -zxvf node_exporter-1.0.1.linux-amd64.tar.gz && \
    install node_exporter-1.0.1.linux-amd64/node_exporter /usr/local/bin/

ADD entrypoint.sh /entrypoint.sh

USER grafana

ENTRYPOINT ["/entrypoint.sh"]