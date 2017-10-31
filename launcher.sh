#!/bin/sh
# launcher.sh
# This will be started when the container starts

set -e

echo -- "--- BEGIN OWNTRACKS LAUNCHER ---"


mkdir -p /owntracks/recorder/store
mkdir -p /owntracks/recorder/store/last

chown -R owntracks:owntracks /owntracks/recorder
/usr/sbin/ot-recorder --initialize

# Put ot-recorder defaults in volume
if [ ! -f /owntracks/etc/default/ot-recorder ]; then
    mkdir -p /owntracks/etc/default/
	mv /etc/default/ot-recorder /owntracks/etc/default/ot-recorder
fi
# copy ot-recorder defaults back to /etc/default/
cp /owntracks/etc/default/ot-recorder /etc/default/ot-recorder

exec /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
