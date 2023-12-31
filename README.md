# RPM & DEB Packages for Prometheus Stack

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

- [prometheus](https://github.com/prometheus/prometheus) : 2.47.1
- [alertmanager](https://github.com/prometheus/alertmanager) : 0.26.0
- [pushgateway](https://github.com/prometheus/pushgateway) : 1.6.2
- [blackbox_exporter](https://github.com/prometheus/blackbox_exporter) : 0.24.0
- [node_exporter](https://github.com/prometheus/node_exporter) : 1.6.1
- [keepalived_exporter](https://github.com/gen2brain/keepalived_exporter) : 0.5.0
- [nginx_exporter](https://github.com/nginxinc/nginx-prometheus-exporter) : 0.11.0
- [pg_exporter](https://github.com/Vonng/pg_exporter) : 0.5.0
- [mysqld_exporter](https://github.com/prometheus/mysqld_exporter) : 0.15.0
- [kafka_exporter](https://github.com/danielqsj/kafka_exporter) : 1.7.0
- [mongodb_exporter](https://github.com/percona/mongodb_exporter) : 0.39.0
- [redis_exporter](https://github.com/oliver006/redis_exporter) : 1.54.0

