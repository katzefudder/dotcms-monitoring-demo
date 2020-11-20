FROM openresty/openresty:1.17.8.2-1-bionic

ENV PATH=$PATH:/usr/local/openresty/luajit/bin:/usr/local/openresty/nginx/sbin:/usr/local/openresty/bin

RUN apt-get -qq update \
    && apt-get -y install dnsutils procps curl wget iputils-ping net-tools unzip ca-certificates

# install linux prometheus exporter
RUN cd /tmp && wget https://github.com/prometheus/node_exporter/releases/download/v1.0.0/node_exporter-1.0.0.linux-amd64.tar.gz && \
    tar -zxvf node_exporter-1.0.0.linux-amd64.tar.gz && \
    install node_exporter-1.0.0.linux-amd64/node_exporter /usr/local/bin/

# add prometheus lua library for monitoring
ADD lua/ /etc/nginx/lua

RUN ln -sf /etc/nginx/nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

# add nginx' host configuration
RUN rm /etc/nginx/conf.d/default.conf && mkdir -p /var/log/nginx

ADD start.sh /

CMD ["/start.sh"]