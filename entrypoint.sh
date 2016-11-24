#!/bin/bash

if [ ! -z "${ADD_HOST_TO_HOSTFILE}" ]; then
  echo 127.0.0.1 ${ADD_HOST_TO_HOSTFILE} >> /etc/hosts
fi

/usr/local/bin/docker-entrypoint.sh rabbitmq-server
