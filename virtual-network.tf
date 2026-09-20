resource "azurerm_virtual_network" "spoke" {
  name                = "vnet-mavencrest-prod"
  location            = var.location
  resource_group_name = azurerm_resource_group.network.name
  address_space       = ["10.10.0.0/16"]
}

data "azurerm_virtual_network" "hub" {
  provider            = azurerm.connectivity
  name                = var.hub_vnet_name
  resource_group_name = var.hub_resource_group_name
}
