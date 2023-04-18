# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

# Virtual Network
resource "azurerm_virtual_network" "vnet1" {
  name = local.virtual_net_name
  resource_group_name = local.resource_group_name
  location = var.location
  address_space = ["10.0.0.0/16"]

  tags = var.add_tags
}

# Subnet
resource "azurerm_subnet" "snet1a" {
  name = local.subnet_1a_name
  resource_group_name = local.resource_group_name
  virtual_network_name = local.virtual_net1_name
  address_prefixes = ["10.0.0.0/27"]
}

# Subnet1a Network Security Group
resource "azurerm_network_security_group" "nsg1a" {
  name = local.nsg1a_name
  location = var.location
  resource_group_name = local.resource_group_name
  
  security_rule {
    name                       = "initial-testing"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
    }

  tags = var.add_tags
}