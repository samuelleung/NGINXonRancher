#!/bin/sh
rancher kubectl delete namespace nginx-ingress
rancher kubectl delete clusterrole nginx-ingress
rancher kubectl delete clusterrolebinding nginx-ingress
