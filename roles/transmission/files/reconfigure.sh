#!/usr/bin/env bash
systemctl stop transmission-daemon
cp /tmp/settings.json /var/lib/transmission-daemon/info/settings.json
systemctl start transmission-daemon
