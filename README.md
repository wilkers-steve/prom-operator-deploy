# prom-operator-deploy
Helm charts for deploying end-to-end monitoring leveraging Prometheus Operator

## Goal
Develop Helm charts to deploy an end-to-end monitoring solution consisting of:
- [x] prometheus operator
- [ ] prometheus resource Type
- [x] alertmanager
- [x] kube-state-metrics
- [x] node-exporter
- [ ] grafana

Currently, there are some issues with the prometheus resource type and grafana as they both use syntax that Helm tries to render as a template. Hopefully, a workaround for these issues will arise soon.


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
printf "Waiting for Operator to register third party objects..."
until kubectl get servicemonitor --namespace=monitoring > /dev/null 2>&1; do sleep 1; printf "."; done
until kubectl get prometheus --namespace=monitoring > /dev/null 2>&1; do sleep 1; printf "."; done
until kubectl get alertmanager --namespace=monitoring > /dev/null 2>&1; do sleep 1; printf "."; done
echo "done!"

kubectl apply -f manifests/grafana/grafana-credentials.yaml --namespace=monitoring
kubectl apply -f manifests/prometheus --namespace=monitoring
kubectl apply -f manifests/grafana --namespace=monitoring

for x in node-exporter kube-state-metrics alertmanager; do
  helm install --name=$x local/$x --namespace=monitoring;
done
```

### down.sh

This removes all artifacts and provides a clean slate for running again. The contents are as follows:

```
#!/bin/bash

kubectl delete statefulset prometheus-k8s --namespace=monitoring
kubectl delete statefulset prometheus-k8s --namespace=default
kubectl delete service prometheus-operated --namespace=default
kubectl delete service prometheus-operated --namespace=monitoring
for x in prometheus-operator alertmanager node-exporter kube-state-metrics;
  do helm delete --purge $x;
done
```
