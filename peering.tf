resource "azurerm_virtual_network_peering" "spoke_to_hub" {
  name                      = "peer-prod-to-hub"
  resource_group_name       = azurerm_resource_group.network.name
  virtual_network_name      = azurerm_virtual_network.spoke.name
  remote_virtual_network_id = data.azurerm_virtual_network.hub.id
}

resource "azurerm_virtual_network_peering" "hub_to_spoke" {
  provider                  = azurerm.connectivity
  name                      = "peer-hub-to-prod"
  resource_group_name       = var.hub_resource_group_name
  virtual_network_name      = var.hub_vnet_name
  remote_virtual_network_id = azurerm_virtual_network.spoke.id
}
