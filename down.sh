#!/bin/bash

for x in prometheus grafana prometheus-operator alertmanager node-exporter kube-state-metrics;
  do helm delete --purge $x;
done
kubectl delete namespace monitoring
