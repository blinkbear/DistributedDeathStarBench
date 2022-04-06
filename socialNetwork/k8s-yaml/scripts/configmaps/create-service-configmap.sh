#!/bin/bash

cd $(dirname $0)/../..

# This script creates an OpenShift ConfigMap for all the services which uses the service-config.json
kubectl create cm service-conf-json --from-file=config/service-config.json -n social-network

