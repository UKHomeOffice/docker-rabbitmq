# Docker RabbitMQ

RabbitMQ with Management plugin enabled. Enables Clustering in Kubernetes.

## Usage

Ensure you have the following set in your container:

```
- name: RABBITMQ_POD_IP
  valueFrom:
    fieldRef:
      fieldPath: status.podIP
- name: SET_RABBITMQ_NODENAME
  value: "true"
```

This will export RABBITMQ_NODENAME=rabbitmq@${RABBITMQ_POD_IP} which can then be used to set up a cluster.
