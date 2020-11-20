FROM amazon/opendistro-for-elasticsearch:1.9.0

RUN yum update -y -q && yum install -y -q wget

# install linux prometheus exporter
RUN cd /tmp && wget https://github.com/prometheus/node_exporter/releases/download/v1.0.0/node_exporter-1.0.0.linux-amd64.tar.gz && \
    tar -zxvf node_exporter-1.0.0.linux-amd64.tar.gz && \
    install node_exporter-1.0.0.linux-amd64/node_exporter /usr/local/bin/

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]