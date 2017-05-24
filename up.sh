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
