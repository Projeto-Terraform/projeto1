terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.58.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "5.0.1"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  #skip_provider_registration = true
  features {}
}

provider "aws" {
  region     = "us-east-1"
}