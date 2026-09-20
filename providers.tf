terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.prod_subscription_id
}

provider "azurerm" {
  alias = "connectivity"
  features {}
  subscription_id = var.connectivity_subscription_id
}
