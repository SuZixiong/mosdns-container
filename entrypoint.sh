#!/bin/sh

sed -i 's/12.12.12.12/'"$ECS_CN"'/g' /config.yaml
sed -i 's/123.123.123.123/'"$ECS_US"'/g' /config.yaml
if [ ! -f /etc/mosdns/config.yaml ]; then
	mkdir -p /etc/mosdns/
	cp -u /config.yaml /etc/mosdns/config.yaml
    cp -u /geosite.dat /etc/mosdns/geosite.dat
    cp -u /geoip.dat /etc/mosdns/geoip.dat
fi
/usr/bin/mosdns -dir /etc/mosdns

exec "$@"
