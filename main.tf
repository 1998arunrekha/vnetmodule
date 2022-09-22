terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

module "ResourceGroup" {
    source = "./ResourceGroup"
    resourcegroupname = "mytestrg656"
    location = "east us"
  
}

module "Vnet" {
    source = "./Vnet"
    testvnet = "testvirtualnetwork1"
    location = "east us"
    resourcegroup = "mytestrg656"
    subnet1 = "subnet2233"
  
}