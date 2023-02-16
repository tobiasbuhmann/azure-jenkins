# Providers specification
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Providers configuration
provider "azurerm" {
  features {}
}

# RG
resource "azurerm_resource_group" "resourceGroup" {
  tags     = var.tags
  name     = "rg-${var.subscriptionName}-network-${var.region}-${var.environment}"
  location = var.location
}
