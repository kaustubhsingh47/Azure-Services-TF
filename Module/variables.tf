# location: The location of the resource group.
variable "location" {
  type        = string
  description = "The location of the resource group."
}

# peering_type: The type of peering for the Express Route circuit.
variable "peering_type" {
  type        = string
  description = "The type of peering for the Express Route circuit."
}

# peer_asn: The ASN (Autonomous System Number) of the peer.
variable "peer_asn" {
  type        = string
  description = "The ASN (Autonomous System Number) of the peer."
}

# ipv4_primary_prefix: The primary IPv4 address prefix for the peering.
variable "ipv4_primary_prefix" {
  type        = string
  description = "The primary IPv4 address prefix for the peering."
}

# ipv4_secondary_prefix: The secondary IPv4 address prefix for the peering.
variable "ipv4_secondary_prefix" {
  type        = string
  description = "The secondary IPv4 address prefix for the peering."
}

# ipv4_enabled: Indicates whether IPv4 is enabled.
variable "ipv4_enabled" {
  type        = bool
  description = "Indicates whether IPv4 is enabled."
}

# vlan_id: The ID of the VLAN.
variable "vlan_id" {
  type        = string
  description = "The ID of the VLAN."
}

# advertised_public_prefixes_ipv4: The list of advertised public IPv4 prefixes.
variable "advertised_public_prefixes_ipv4" {
  type        = list(string)
  default     = []
  description = "The list of advertised public IPv4 prefixes."
}

# ipv6_primary_prefix: The primary IPv6 address prefix for the peering.
variable "ipv6_primary_prefix" {
  type        = string
  description = "The primary IPv6 address prefix for the peering."
}

# ipv6_secondary_prefix: The secondary IPv6 address prefix for the peering.
variable "ipv6_secondary_prefix" {
  type        = string
  description = "The secondary IPv6 address prefix for the peering."
}

# ipv6_enabled: Indicates whether IPv6 is enabled.
variable "ipv6_enabled" {
  type        = bool
  description = "Indicates whether IPv6 is enabled."
}

# advertised_public_prefixes_ipv6: The list of advertised public IPv6 prefixes.
variable "advertised_public_prefixes_ipv6" {
  type        = list(string)
  default     = []
  description = "The list of advertised public IPv6 prefixes."
}
