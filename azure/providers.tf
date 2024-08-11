terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "=3.114.0"
        }
        kubernetes = {
            source  = "hashicorp/kubernetes"
            version = "=2.31.0"
        }
    }

    backend "azurerm" {
        resource_group_name   = "likeminds-load-resource-group"
        storage_account_name  = "likemindsload"
        container_name        = "likeminds-load-terraform-state"
        key                   = "terraform.tfstate"
    }
}

provider "azurerm" {
  features {}
}

provider "kubernetes" {
    config_path = "kubeconfig" // Path to the kubeconfig file, to be stored in the current directory
}