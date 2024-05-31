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
  subscription_id = "58d48d30-bf14-416f-92ed-254430cc6772"
}

# // Define the default Azure provider
# provider "azurerm" {
#   features {
#     resource_group {
#       prevent_deletion_if_contains_resources = false
#     }
#   }
# }
