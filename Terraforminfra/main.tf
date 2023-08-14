terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.66.0"
    }
  }
}
provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "skywave-rg"
    storage_account_name = "skywavestorageaccount"
    container_name       = "skywaveconatiner"
    key                  = "skywave.tfstate"
  }
}