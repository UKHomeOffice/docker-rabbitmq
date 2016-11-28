# Docker RabbitMQ

RabbitMQ with Management plugin enabled. Enables Clustering in Kubernetes.

## Usage

```
cd kube
kubectl create configmap rabbitmq  --from-file=rabbitmq.config --from-file=enabled_plugins
```

Then copy files from kube folder to your project, and customize if needed.
