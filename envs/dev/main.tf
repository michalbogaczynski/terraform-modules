module "resource-group" {
  source = "../../modules/resource-group"
  resource_group_location= var.location 
  resource_group_name= "${var.name}-rg"
}


#module "vnet" {
#  source              = "../../modules/vnet"
#  name                = var.name
#  location            = var.location
#  address_space       = var.address_space
#  resource_group_name = azure_resource_group.rg.name
#
#
#  subnets = {
#    "dev-subnet-01" = {
#      address_prefix = "10.0.3.0/24"
#    }
#    "dev-subnet-02" = {
#      address_prefix = "10.0.4.0/24"
#    }
#  }
#}