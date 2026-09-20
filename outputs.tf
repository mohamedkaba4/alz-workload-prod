output "spoke_vnet_id" {
  value = azurerm_virtual_network.spoke.id
}

output "app_subnet_id" {
  value = azurerm_subnet.app.id
}
