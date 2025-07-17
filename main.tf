provider "azurerm" {
  features {}
  subscription_id = "d52a6d4f-8a6b-4e23-a011-dbb0c8d7eddc"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "my-rg-vsahgal"
    storage_account_name = "mytfstateacctvsahgal"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}


#kick off pipeline
resource "azurerm_resource_group" "main" {
  name     = "myTFResourceGroupVSjul17"
  location = "westus2"
}

# kicks off pipeline and will run terraform plan and apply!
resource "azurerm_resource_group" "main" {
  name     = "myTFResourceGroup2VSjul17"
  location = "westus2"
}


