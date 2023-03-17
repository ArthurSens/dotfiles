#!/bin/bash

make build image

./kind load docker-image quay.io/prometheus-operator/prometheus-operator:$(git rev-parse --short HEAD)
./kind load docker-image quay.io/prometheus-operator/prometheus-config-reloader:$(git rev-parse --short HEAD)
./kind load docker-image quay.io/prometheus-operator/admission-webhook:$(git rev-parse --short HEAD)
kubectl apply -f scripts/kind-rbac.yaml