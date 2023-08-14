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
    resource_group_name  = "skywave-prod1"
    storage_account_name = "skywaveprodtfstate"
    container_name       = "skywavestate"
    key                  = "skywave.tfstate"
  }
}