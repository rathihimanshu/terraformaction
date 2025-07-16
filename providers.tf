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
    name = "githubactionsrsghere1"
    location = "East US"
  
}