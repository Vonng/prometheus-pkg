# RPM & DEB Packages for Prometheus Stack

- [alertmanager](https://github.com/prometheus/alertmanager) : 0.27.0
- [blackbox_exporter](https://github.com/prometheus/blackbox_exporter) : 0.25.0
- [duckdb](https://github.com/duckdb/duckdb) : 0.10.2
- [etcd](https://github.com/etcd-io/etcd) : 3.5.13
- [kafka_exporter](https://github.com/danielqsj/kafka_exporter) : 1.7.0
- [keepalived_exporter](https://github.com/gen2brain/keepalived_exporter) : 0.7.0
- [loki](https://github.com/grafana/loki) : 3.0.0
- [mongodb_exporter](https://github.com/percona/mongodb_exporter) : 0.40.0
- [mysqld_exporter](https://github.com/prometheus/mysqld_exporter) : 0.15.1
- [nginx_exporter](https://github.com/nginxinc/nginx-prometheus-exporter) : 1.1.0
- [node_exporter](https://github.com/prometheus/node_exporter) : 1.8.0
- [pg_exporter](https://github.com/Vonng/pg_exporter) : 0.6.1
- [pgbackrest_exporter](https://github.com/woblerr/pgbackrest_exporter) 0.17.0
- [prometheus](https://github.com/prometheus/prometheus) : 2.51.2
- [pushgateway](https://github.com/prometheus/pushgateway) : 1.8.0
- [VictoriaMetrics](https://github.com/VictoriaMetrics/VictoriaMetrics) : 1.101.0
- [VictoriaLogs](https://github.com/VictoriaMetrics/VictoriaMetrics/releases) : 0.5.2



- [redis_exporter](https://github.com/oliver006/redis_exporter) : 1.59.0



- [vector](https://github.com/vectordotdev/vector/releases/tag/v0.37.1) : 0.37.1


-------------

## Changelog 

**2024/04/26**

prometheus 2.51.2
alertmanager 0.27.0
pushgateway 1.8.0
blackbox_exporter 0.25.0
node_exporter 1.8.0
pgbackrest_exporter 0.17.0
duckdb 0.10.2
etcd 3.5.13
loki 3.0.0
victoriametrics 1.101.0
victorialogs: 0.5.2





- [prometheus](prometheus/)
- [alertmanager](alertmanager/)
- [pushgateway](pushgateway/)
- [blackbox_exporter](blackbox_exporter/)
- [node_exporter](node_exporter/)
- [nginx_exporter](nginx_exporter/)
- [keepalived_exporter](keepalived_exporter/)
- [mysqld_exporter](mysqld_exporter/)
- [mongodb_exporter](mongodb_exporter/)
- [kafka_exporter](kafka_exporter/)
- [pg_exporter](pg_exporter/)
- [redis_exporter](redis_exporter/)


Debian Repo: https://packagecloud.io/pigsty/prometheus


## Build

Install `nfpm` first, then get tarball files with `tarball/get`, finally build with `make` one by one, the output will be created in `dist` dir.

```bash
prometheus/prometheus               : 2.47.1
prometheus/alertmanager             : 0.26.0
prometheus/pushgateway              : 1.6.2
prometheus/blackbox_exporter        : 0.24.0
prometheus/node_exporter            : 1.6.1
nginxinc/nginx-prometheus-exporter  : 0.11.0
Vonng/pg_exporter                   : 0.5.0
prometheus/mysqld_exporter          : 0.15.0
danielqsj/kafka_exporter            : 1.7.0
percona/mongodb_exporter            : 0.39.0
gen2brain/keepalived_exporter       : 0.5.0
```

```bash
cd prometheus          && make
cd alertmanager        && make
cd pushgateway         && make
cd blackbox_exporter   && make
cd node_exporter       && make
cd keepalived_exporter && make
cd nginx_exporter      && make
cd pg_exporter         && make
cd mysqld_exporter     && make
cd kafka_exporter      && make
cd mongodb_exporter    && make
```


DOING


