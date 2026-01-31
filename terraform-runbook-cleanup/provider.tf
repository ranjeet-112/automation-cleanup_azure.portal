terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.58.0"
    }
  }
}

provider "azurerm" {
  features {}  
  subscription_id = "bc541da1-a034-4462-a34b-a447b3fcbeee"
}