#==============================================================#
# File      :   Makefile
# Ctime     :   2023-10-05
# Mtime     :   2023-10-05
# Desc      :   Makefile shortcuts for prometheus rpm build
# Path      :   Makefile
# Copyright (C) 2018-2023 Ruohang Feng (rh@vonng.com)
#==============================================================#


default: build
build: prometheus alertmanager pushgateway blackbox_exporter node_exporter nginx_exporter keepalived_exporter mysqld_exporter mongodb_exporter kafka_exporter pg_exporter redis_exporter victoria-metrics

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
redis_exporter:
	cd redis_exporter && make
victoria-metrics:
	cd victoria-metrics && make
publish:
	# package_cloud push pigsty/prometheus/el/8 dist/rpm/*.rpm
	package_cloud push pigsty/prometheus/ubuntu/jammy dist/deb/*.deb

check:
	rsync -avz --delete dist/ sv:/data/prometheus-pkg
	ssh sv 'ssh debian12 mkdir -p /tmp/prometheus'
	ssh sv 'ssh ubuntu22 mkdir -p /tmp/prometheus'
	ssh sv 'ssh ubuntu20 mkdir -p /tmp/prometheus'
	ssh sv 'ssh rocky8   mkdir -p /tmp/prometheus'
	ssh sv 'ssh rocky9   mkdir -p /tmp/prometheus'

	ssh sv 'rsync -avz /data/prometheus-pkg/deb/ debian12:/tmp/prometheus/'
	ssh sv 'rsync -avz /data/prometheus-pkg/deb/ ubuntu20:/tmp/prometheus/'
	ssh sv 'rsync -avz /data/prometheus-pkg/deb/ ubuntu22:/tmp/prometheus/'
	ssh sv 'rsync -avz /data/prometheus-pkg/rpm/ rocky8:/tmp/prometheus/'
	ssh sv 'rsync -avz /data/prometheus-pkg/rpm/ rocky9:/tmp/prometheus/'

.PHONY: prometheus alertmanager pushgateway blackbox_exporter node_exporter nginx_exporter keepalived_exporter mysqld_exporter mongodb_exporter kafka_exporter pg_exporter redis_exporter victoria-metrics publish