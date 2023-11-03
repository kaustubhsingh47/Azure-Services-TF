resource "azurerm_resource_group" "rgpeer" {
  name     = yaha naming convention wala aayegqa 
  location = var.location
}


resource "azurerm_express_route_circuit_peering" "peering" {
  peering_type                  = var.peering_type
  express_route_circuit_name    = data.azurerm_express_route_circuit.circuit.name
  resource_group_name           = azurerm_resource_group.rgpeer.name
  peer_asn                      = var.peer_asn
  primary_peer_address_prefix   = var.ipv4_primary_prefix
  secondary_peer_address_prefix = var.ipv4_secondary_prefix
  ipv4_enabled                  = var.ipv4_enabled
  vlan_id                       = var.vlan_id

  microsoft_peering_config {
    advertised_public_prefixes = var.advertised_public_prefixes_ipv4
  }

  ipv6 {
    primary_peer_address_prefix   = var.ipv6_primary_prefix
    secondary_peer_address_prefix = var.ipv6_secondary_prefix
    enabled                       = var.ipv6_enabled

    microsoft_peering {
      advertised_public_prefixes = var.advertised_public_prefixes_ipv6
    }
  }
}
