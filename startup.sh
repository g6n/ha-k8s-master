#!/bin/bash
if [ $HOSTNAME = "haproxy01" ]; then
  cp /tmp/keepalived-master.conf /etc/keepalived/keepalived.conf
else
  cp /tmp/keepalived-slave.conf /etc/keepalived/keepalived.conf
fi

