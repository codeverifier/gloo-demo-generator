# Terraform Modules For Major Cloud Providers

This includes terraform modules for provisioning Kubernetes clusters in AWS, Google and Azure.

## Prerequisites

In order to run these terraform modules you will need to authenticate with each of the cloud providers.
* For EKS - Using `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` to map the credentials.
* For AKS - Supported via CLI login, `az login`.
* For GKE - Using `gcloud beta auth application-default login` to save the credentials to `json` file. Set env `GOOGLE_APPLICATION_CREDENTIALS` to this file.

## Instructions

1. Define `terraform.tfvars`. 

    For e.g.
    ```
    owner                   = "kasunt"

    enable_gke              = false
    gke_project             = "field-engineering-apac"
    gke_cluster_count       = 3
    gke_region              = "australia-southeast1"
    gke_cluster_name        = "test"
    gke_node_pool_size      = 3
    gke_node_type           = "e2-standard-4"

    enable_eks              = true
    aws_profile             = "default"
    eks_region              = "ap-southeast-1"
    eks_cluster_name        = "gloo-platform"
    eks_cluster_count       = 3
    eks_node_type           = "t3.medium"
    eks_nodes               = 3
    ```
2. `terraform init` to initialize
3. `terraform apply` to apply the plan