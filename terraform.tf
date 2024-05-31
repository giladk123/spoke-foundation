terraform {
  required_version = ">=1.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.104.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "305f81c7-dc9e-4f49-97f7-edea3620656d"
}