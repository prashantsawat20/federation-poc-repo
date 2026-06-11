terraform {

  required_version = "~> 1.11"

  required_providers {

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.35"
    }
  }
}

provider "azurerm" {
  features {}
}

terraform {

  backend "azurerm" {

    resource_group_name  = "rg-nusitccp-devops"
    storage_account_name = "<storage-account>"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"

  }
}



