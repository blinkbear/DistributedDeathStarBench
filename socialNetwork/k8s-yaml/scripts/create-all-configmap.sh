#!/bin/bash

cd $(dirname $0)/..

./scripts/configmaps/create-jaeger-configmap.sh
./scripts/configmaps/create-media-frontend-configmap.sh
./scripts/configmaps/create-nginx-thrift-configmap.sh
./scripts/configmaps/create-ssl-key-configmap.sh
cd - >/dev/null
