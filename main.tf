terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.58.0"
    }
  }
}


# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true
  features {}
  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  subscription_id = var.ARM_SUBSCRIPTION_ID
  tenant_id       = var.ARM_TENANT_ID
}

data "terraform_remote_state" "vnet" {
  backend = "azurerm"
  config = {
    resource_group_name  = "projeto-terraform-resource-group"
    storage_account_name = "storageaccounttf2112"
    container_name       = "projeto-terraform-container"
    key                  = "azure-vnet/terraform.tfstate"
  }
}