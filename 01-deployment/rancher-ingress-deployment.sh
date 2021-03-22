#!/bin/sh

rancher kubectl apply -f common/ns-and-sa.yaml
rancher kubectl apply -f rbac/rbac.yaml
rancher kubectl apply -f rbac/ap-rbac.yaml
rancher kubectl apply -f common/default-server-secret.yaml
rancher kubectl apply -f common/nginx-config.yaml
rancher kubectl apply -f common/ingress-class.yaml
rancher kubectl apply -f common/crds/k8s.nginx.org_virtualservers.yaml
rancher kubectl apply -f common/crds/k8s.nginx.org_virtualserverroutes.yaml
rancher kubectl apply -f common/crds/k8s.nginx.org_transportservers.yaml
rancher kubectl apply -f common/crds/k8s.nginx.org_policies.yaml
rancher kubectl apply -f common/crds/k8s.nginx.org_globalconfigurations.yaml
rancher kubectl apply -f common/global-configuration.yaml
rancher kubectl apply -f common/crds/appprotect.f5.com_aplogconfs.yaml
rancher kubectl apply -f common/crds/appprotect.f5.com_appolicies.yaml
rancher kubectl apply -f common/crds/appprotect.f5.com_apusersigs.yaml
rancher kubectl apply -f deployment/nginx-plus-ingress.yaml
rancher kubectl create -f service/nodeport.yaml

rancher kubectl apply -f service/loadbalancer-aws-elb.yaml
rancher kubectl apply -f common/nginx-config.yaml
