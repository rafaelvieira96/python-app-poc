#!/bin/bash

rs=1

kubectl scale statefulset -n argocd argocd-application-controller --replicas=$rs

kubectl scale deployment argocd-applicationset-controller argocd-dex-server argocd-notifications-controller \
  argocd-redis argocd-repo-server argocd-server --replicas=$rs -n argocd


