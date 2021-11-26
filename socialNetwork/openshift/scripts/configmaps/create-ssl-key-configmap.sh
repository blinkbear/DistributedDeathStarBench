#!/bin/bash

cd $(dirname $0)/../..

# This script creates an OpenShift ConfigMap for all the services
# built upon the C++ jaeger client, which uses the jaeger-config.yml
# to find the jaeger end-point URL.
kubectl create cm ca-pem  --from-file=config/CA.pem               -n social-network

# Since the nginx-thrift service is not built upon the C++ jaeger client,
# this service requires the jaeger-config.json in a different format than
# the one in the ConfigMap jaeger-config. Then, we create a new ConfigMap.

kubectl create cm server-crt --from-file=config/server.crt -n social-network
kubectl create cm server-key --from-file=config/server.key -n social-network
kubectl create cm server-pem --from-file=config/server.pem -n social-network

