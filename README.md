# prom-operator-deploy
Helm charts for deploying end-to-end monitoring leveraging Prometheus Operator

## Goal
Develop Helm charts to deploy an end-to-end monitoring solution consisting of:
- [x] prometheus operator
- [x] prometheus resource Type
- [x] alertmanager
- [x] kube-state-metrics
- [x] node-exporter
- [x] grafana


## How to use

Two scripts are provided to stand up and tear down the monitoring stack in its current form, and these will be updated as the additional charts are completed. Once the remaining charts are completed, init containers using Kubernetes Entrypoint will be added to enforce dependency checking/blocking where appropriate.

### Lint and package the charts

With a cluster running and Helm serving a local repository, run ```make``` to lint and package the charts. Grafana and Prometheus have been excluded currently.

### up.sh

This deploys the charts and manifests sequentially, as no current dependency checking is enforced.  The contents are as follows:

```
#!/bin/bash

set -ex

if [ -z "${KUBECONFIG}" ]; then
    export KUBECONFIG=~/.kube/config
fi

helm install --name=prometheus-operator local/prometheus_operator --namespace=monitoring
# Wait for TPRs to be ready.
printf "Waiting for Prometheus Operator to register all third party resources"
until kctl get servicemonitor --namespace=monitoring > /dev/null 2>&1; do sleep 1; printf "."; done
until kctl get prometheus --namespace=monitoring > /dev/null 2>&1; do sleep 1; printf "."; done
until kctl get alertmanager --namespace=monitoring > /dev/null 2>&1; do sleep 1; printf "."; done
echo "Third party resources registered successfully."

helm install --name=node-exporter local/node-exporter --namespace=monitoring
sleep 5
helm install --name=kube-state-metrics local/kube-state-metrics --namespace=monitoring
sleep 5
helm install --name=grafana local/grafana --namespace=monitoring
sleep 5
helm install --name=prometheus local/prometheus --namespace=monitoring
sleep 5
helm install --name=alertmanager local/alertmanager --namespace=monitoring

```

### down.sh

This removes all artifacts and provides a clean slate for running again. The contents are as follows:

```
#!/bin/bash

for x in prometheus-operator alertmanager node-exporter kube-state-metrics grafana prometheus;
  do helm delete --purge $x;
done
```
