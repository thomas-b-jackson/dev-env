#!/bin/bash

# login via duck cli to get a jwt token
sudo duck login -u TJackso494 -p <redacted>

# retrieve the token contents from the token file created by the duck cli
token=$(cat ~/.duck/token | jq -r '.jwt')

# add the token to ~/.kube/config for all clusters
kubectl config set-credentials tmo-user --token=$token
