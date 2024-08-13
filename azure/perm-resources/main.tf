## Perm-resources - Terraform configuration for creating permanent resources

terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "=3.114.0"
        }
    }

    backend "azurerm" {
        resource_group_name   = "likeminds-load-resource-group"
        storage_account_name  = "likemindsload"
        container_name        = "likeminds-load-terraform-state"
        key                   = "resources-terraform.tfstate"
    }
}

provider "azurerm" {
  features {}
}

# Use existing virtual network
data "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.resource_group_name
}

# Use existing subnet
data "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  resource_group_name  = var.resource_group_name
}
