#!/bin/bash
set -e

node_exporter &

source /usr/local/bin/docker-entrypoint.sh