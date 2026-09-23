resource "azurerm_subnet" "database" {
  name                 = "snet-database"
  resource_group_name  = azurerm_resource_group.network.name
  virtual_network_name = azurerm_virtual_network.spoke.name
  address_prefixes     = ["10.10.2.0/24"]

  network_security_group_id_wo         = azurerm_network_security_group.database.id
  network_security_group_id_wo_version = 1
}
