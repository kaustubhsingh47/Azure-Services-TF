resource "azurerm_resource_group" "connectionrg" {
  name     = yaha naming convention wala aayegqa 
  location = var.location
}

resource "azurerm_virtual_wan" "wan" {
  name                = var.wan_name
  resource_group_name = azurerm_resource_group.connectionrg.name
  location            = azurerm_resource_group.connectionrg.location
}

resource "azurerm_virtual_hub" "hub" {
  name                = var.hub_name
  resource_group_name = azurerm_resource_group.connectionrg.name
  location            = azurerm_resource_group.connectionrg.location
  virtual_wan_id      = azurerm_virtual_wan.wan.id
  address_prefix      = var.hub_address_prefix
}


resource "azurerm_express_route_gateway" "gateway" {
  name                = var.gateway_name
  resource_group_name = azurerm_resource_group.connectionrg.name
  location            = azurerm_resource_group.connectionrg.location
  virtual_hub_id      = azurerm_virtual_hub.hub.id
  scale_units         = var.scale_units
}

resource "azurerm_express_route_connection" "connection" {
  name                             = var.connection_name
  express_route_gateway_id         = azurerm_express_route_gateway.gatway.id
  express_route_circuit_peering_id = azurerm_express_route_circuit_peering.peering.id
}
