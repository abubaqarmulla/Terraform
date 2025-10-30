
# 🚀 Terraform AWS EC2 Setup Guide

This guide walks you through installing Terraform on a Linux system, configuring AWS credentials, and deploying an EC2 instance using Terraform.

## 📦 Terraform Installation (Linux)

sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl

curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt-get update && sudo apt-get install terraform

terraform -version

## Add AWS Access Key and Secret Key from your aws account

export AWS_ACCESS_KEY_ID="AKIA2CFZWHSYRQOQAD7N"

export AWS_SECRET_ACCESS_KEY="f/yKfhBaKiwmneZCrsJfD2mFVcG4uNNbw0o6s7mZ"

## Write Terraform file and deploy

vi main.tf

terraform init

terraform plan

terraform apply

terraform destroy
