#!/bin/sh
rancher kubectl port-forward `rancher kubectl get pods -n nginx-ingress|grep ingress |awk '{print $1}'` 8080:8080 --namespace=nginx-ingress
