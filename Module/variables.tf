variable "location" {
  type        = string
  description = "The location where the Azure resources will be created."
}

variable "wan_name" {
  type        = string
  description = "The name of the Azure Virtual WAN."
}

variable "hub_name" {
  type        = string
  description = "The name of the Azure Virtual Hub."
}

variable "hub_address_prefix" {
  type        = string
  description = "The address prefix for the Azure Virtual Hub."
}

variable "gateway_name" {
  type        = string
  description = "The name of the Express Route Gateway."
}

variable "scale_units" {
  type        = number
  description = "The number of scale units for the Express Route Gateway."
}

variable "connection_name" {
  type        = string
  description = "The name of the Express Route Connection."
}
