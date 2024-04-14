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
        resource_group_name     = "tfstate"
        storage_account_name    = "tfstateaction"
        container_name          = "tfstate"
        key                     = "terraform.tfstate"
        use_oidc                = "true"
    }
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "rg" {
    name        = "myTFResourceGroup"
    location    = "westus2"
}