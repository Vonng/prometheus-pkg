#==============================================================#
# File      :   Makefile
# Ctime     :   2023-10-05
# Mtime     :   2023-10-05
# Desc      :   Makefile shortcuts for prometheus rpm build
# Path      :   Makefile
# Copyright (C) 2018-2023 Ruohang Feng (rh@vonng.com)
#==============================================================#


default: build
build: prometheus alertmanager pushgateway blackbox_exporter node_exporter nginx_exporter keepalived_exporter mysqld_exporter mongodb_exporter kafka_exporter pg_exporter

prometheus:
	cd prometheus && make
alertmanager:
	cd alertmanager && make
pushgateway:
	cd pushgateway && make
blackbox_exporter:
	cd blackbox_exporter && make
node_exporter:
	cd node_exporter && make
nginx_exporter:
	cd nginx_exporter && make
keepalived_exporter:
	cd keepalived_exporter && make
mysqld_exporter:
	cd mysqld_exporter && make
mongodb_exporter:
	cd mongodb_exporter && make
kafka_exporter:
	cd kafka_exporter && make
pg_exporter:
	cd pg_exporter && make
victoria-metrics:
	cd victoria-metrics && make
publish:
	# package_cloud push pigsty/prometheus/el/8 dist/rpm/*.rpm
	package_cloud push pigsty/prometheus/ubuntu/jammy dist/deb/*.deb

.PHONY: prometheus alertmanager pushgateway blackbox_exporter node_exporter nginx_exporter keepalived_exporter mysqld_exporter mongodb_exporter kafka_exporter pg_exporter victoria-metrics publish