# Monitoring dotCMS 
To make that demo project run, you need to make sure your Docker Desktop needs to have at least 4GB of memory allocated.
To start all containers, simply run:
```
docker-compose up -d
```

## Available Services

| Component                     | Description                                                               | URL                           |
| -----------------------       | ------------------------------------------------------                    | ----------------------------- |
| nginx                         | nginx/openresty                                                           | <http://localhost:80/>        |
| dotcms                        | dotCMS                                                                    | <http://localhost:8080/>      |
| grafana                       | Grafana                                                                   | <http://localhost:3000/>      |
| prometheus                    | Prometheus                                                                | <http://localhost:9090/>      |
| alertmanager                  | Alertmanager                                                              | <http://localhost:9093/>      |
| mailhog                       | Mailhog                                                                   | <http://localhost:8025/>      |
| kibana                        | kibana                                                                    | <http://localhost:5601/>      |
| node-exporter                 | Node Exporter                                                             | <http://localhost:9100/>      |
| jmx-exporter                  | JMX Exporter                                                              | <http://localhost:5556/>      |
| elasticsearch-exporter        | Elasticsearch Exporter                                                    | <http://localhost:9114/>      |
| openresty-exporter            | openresty via lua                                                         | <http://localhost:9145/>      |
| elasticsearch-node-exporter   | Node Exporter                                                             | <http://localhost:9101/>      |
| grafana-node-exporter         | Node Exporter                                                             | <http://localhost:9102/>      |
| postgres-node-exporter        | Node Exporter                                                             | <http://localhost:9103/>      |
| postgres-exporter             | Node Exporter                                                             | <http://localhost:9187/>      |
| openresty-node-exporter       | Node Exporter                                                             | <http://localhost:9104/>      |