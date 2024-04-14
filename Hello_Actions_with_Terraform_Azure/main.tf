# Configure the Azure provider
terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "3.67.0"
        }
    }

    required_version = ">= 1.1.0"

    backend "azurerm" {
        resource_group_name     = "backend-rg"
        storage_account_name    = "sampletextsavk"
        container_name          = "demosampletest"
        key                     = "terraform.tfstate"
    }
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "rg" {
    name        = "myTFResourceGroup"
    location    = "westus2"
}