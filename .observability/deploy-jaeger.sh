#!/bin/bash

kubectl create namespace observability
kubectl create -f https://github.com/jaegertracing/jaeger-operator/releases/download/v1.34.0/jaeger-operator.yaml -n observability 

kubectl apply -f ~/.observability/simple-jaeger.yml