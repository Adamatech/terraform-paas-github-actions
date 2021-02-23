terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.1"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "RG-GC-AZR-TF"
    storage_account_name = "gencloudazuretf2021"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}
