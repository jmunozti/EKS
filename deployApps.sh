#!/bin/bash
kubectl create namespace ms1
kubectl apply -f ms1.yaml

kubectl apply -f loadBalancer.yaml
kubectl expose deployment hello-world --type=LoadBalancer --name=ms2
