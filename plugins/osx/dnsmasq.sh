#!/bin/sh

brew install dnsmasq

echo 'address=/.test/127.0.0.1' > /usr/local/etc/dnsmasq.conf

sudo mkdir -v /etc/resolver
sudo bash -c 'echo "nameserver 127.0.0.1" > /etc/resolver/test'

sudo launchctl start homebrew.mxcl.dnsmasq
