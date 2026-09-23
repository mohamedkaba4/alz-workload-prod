resource "azurerm_network_security_group" "app" {
  name                = "nsg-app-prod"
  location            = var.location
  resource_group_name = azurerm_resource_group.network.name
}

resource "azurerm_network_security_group" "database" {
  name                = "nsg-database-prod"
  location            = var.location
  resource_group_name = azurerm_resource_group.network.name
}
