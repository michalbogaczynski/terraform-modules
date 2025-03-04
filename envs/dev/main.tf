module "resource-group" {
  source = "../../modules/resource-group"
  resource_group_location="Poland Central"  
  resource_group_name="DEVOPS"
}


module "vnet" {
  source              = "../../modules/vnet/"
  name                = var.name
  location            = azurerm_resource_group.rg.location
  address_space       = var.address_space
  resource_group_name = azurerm_resource_group.rg.name

  subnets = {
    "dev-subnet-01" = {
      address_prefix = "10.0.3.0/24"
    }
    "dev-subnet-02" = {
      address_prefix = "10.0.4.0/24"
    }
  }
}