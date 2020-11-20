#!/bin/bash

echo "starting node_exporter"
node_exporter &

if [[ "$?" == 0 ]]; then
  /usr/local/openresty/bin/openresty -c /usr/local/openresty/nginx/conf/nginx.conf -g 'daemon off;'
else
  exit 1
fi