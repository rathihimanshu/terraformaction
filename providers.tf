terraform {
  backend "azurerm" {
    storage_account_name = "tflockstoragehim"
    container_name = "tflockstoragehimcon1"
    resource_group_name = "tf-lock"
    key = "githubactions/terraform.tfstate"    
  }
}
provider "azurerm" {
    features {
      
    }
  
}

resource "azurerm_resource_group" "rs1" {
    name = "githubactionsrsghere11"
    location = "East US"
  
}
resource "azurerm_virtual_network" "vnet1" {
    resource_group_name = azurerm_resource_group.rs1.name
    location = azurerm_resource_group.rs1.location
    address_space = ["10.0.0.0/16"]
    name = "githubvnet"
  
}