#!/bin/bash

set -ex

if [ -z "${KUBECONFIG}" ]; then
    export KUBECONFIG=~/.kube/config
fi

if [ -z "${NAMESPACE}" ]; then
    NAMESPACE=monitoring
fi

kubectl create namespace "$NAMESPACE"

kctl() {
    kubectl --namespace "$NAMESPACE" "$@"
}

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

