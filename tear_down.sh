#!/bin/bash

kubectl delete statefulset prometheus-k8s --namespace=monitoring
kubectl delete statefulset prometheus-k8s --namespace=default
kubectl delete service prometheus-operated --namespace=default
kubectl delete service prometheus-operated --namespace=monitoring
for x in prometheus-operator alertmanager node-exporter kube-state-metrics;
  do helm delete --purge $x;
done
