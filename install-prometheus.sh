#!/bin/bash
kubectl apply -f p-monitoring-ns.yaml 
kubectl apply -f p-prometheus-cr.yaml 
kubectl apply -f p-prometheus-configmap.yaml 
kubectl apply -f p-prometheus-deployment.yaml
kubectl apply -f p-prometheus-service.yaml 
kubectl apply -f p-prometheus-ingress.yaml

