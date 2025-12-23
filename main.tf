terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  for_each = toset(var.environments)
  name     = "rg-web-${each.key}-terraform-v2"
  location = var.location
}


