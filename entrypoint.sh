#!/bin/bash

if [[ "${SET_RABBITMQ_NODENAME}" == "true" ]]; then
  if [ ! -z ${RABBITMQ_POD_IP} ]; then
    echo "RABBITMQ_POD_IP env var not set"
    exit 1
  fi

  export RABBITMQ_NODENAME=rabbitmq@${RABBITMQ_POD_IP}

fi

/usr/local/bin/docker-entrypoint.sh rabbitmq-server
