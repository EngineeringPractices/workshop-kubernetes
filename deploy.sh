#!/usr/bin/env bash

cd terraform
terraform init
terraform plan
terraform apply

kubectl get pods --namespace=kube-system

# gcloud projects create example-project-wayde191 --name=example-project
# gcloud container clusters get-credentials first-cluster -z us-central1-a
