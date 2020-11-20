FROM postgres:11

RUN apt -q update && apt install -y -q wget

# install linux prometheus exporter
RUN cd /tmp && wget https://github.com/prometheus/node_exporter/releases/download/v1.0.0/node_exporter-1.0.0.linux-amd64.tar.gz && \
    tar -zxvf node_exporter-1.0.0.linux-amd64.tar.gz && \
    install node_exporter-1.0.0.linux-amd64/node_exporter /usr/local/bin/

# https://github.com/docker-library/docs/tree/master/postgres#how-to-extend-this-image
ADD entrypoint.sh /docker-entrypoint-initdb.d/entrypoint.sh