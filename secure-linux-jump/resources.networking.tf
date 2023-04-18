# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

#
# Bastion Vnet & Subnet
#

# Virtual Network
resource "azurerm_virtual_network" "hub_vnet" {
  depends_on = [
    module.hub_rg
  ]
  name = local.hub_vnet_name
  resource_group_name = local.hub_rg_name
  location = var.location
  address_space = ["10.0.0.0/16"]

  tags = var.add_tags
}

# Azure Bastion Subnet
resource "azurerm_subnet" "bastionsnet" {
  depends_on = [
    azurerm_virtual_network.hub_vnet
  ]
  name = "AzureBastionSubnet"
  resource_group_name = local.hub_rg_name
  virtual_network_name = local.hub_vnet_name
  address_prefixes = ["10.0.0.0/27"]
}

# Bastion Network Security Group
resource "azurerm_network_security_group" "hub_nsg" {
  name = local.hub_nsg_name
  location = var.location
  resource_group_name = local.hub_rg_name
  
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

# Public IP
resource "azurerm_public_ip" "hub-bas-pip" {
  name = local.hub_bas_pip_name
  location = var.location
  resource_group_name = local.hub_rg_name
  allocation_method = "Static"
  sku = "Standard"
}

#
# Linux Vnet & Subnet
#
resource "azurerm_virtual_network" "jumpvnet" {
    depends_on = [
    module.jump_rg
  ]
  name = local.linux_vnet_name
  resource_group_name = local.linux_rg_name
  location = var.location
  address_space = ["10.1.0.0/16"]

  tags = var.add_tags
}

# Linux VM Subnet
resource "azurerm_subnet" "linuxsnet" {
  depends_on = [
    azurerm_virtual_network.jumpvnet
  ]
  name = local.linux_snet_name
  resource_group_name = local.linux_rg_name
  virtual_network_name = local.linux_vnet_name
  address_prefixes = ["10.1.0.0/27"]
}

# Linux VM NSG
resource "azurerm_network_security_group" "linuxnsg" {
  name = local.linux_nsg_name
  location = var.location
  resource_group_name = local.linux_rg_name
  
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