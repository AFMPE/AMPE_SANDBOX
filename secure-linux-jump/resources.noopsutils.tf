# Resource Group NoOpsUtils
resource "azurenoopsutils_resource_name" "rg" {
    name = "resourcegroup"
    resource_type = "azurerm_resource_group"
    prefixes        = [var.org_name, var.environment,var.workload_name]
    suffixes        = []
    random_length = 5
    clean_input = true
    separator     = "-"
}

# Virtual Net1 NoOpsUtils
resource "azurenoopsutils_resource_name" "vnet1" {
    name = "virtualnet1"
    resource_type = "azurerm_virtual_network"
    prefixes        = [var.org_name, var.environment,var.workload_name]
    suffixes        = []
    random_length = 5
    clean_input = true
    separator     = "-"
}


# SubNet 1a NoOpsUtils
resource "azurenoopsutils_resource_name" "nsg1a" {
    name = "nsg1a"
    resource_type = "azurerm_network_security_group"
    prefixes        = [var.org_name, var.environment,var.workload_name]
    suffixes        = []
    random_length = 5
    clean_input = true
    separator     = "-"
}

# Public IP NoOpsUtils
resource "azurenoopsutils_resource_name" "pip" {
    name = "pip"
    resource_type = "azurerm_public_ip"
    prefixes        = [var.org_name, var.environment,var.workload_name]
    suffixes        = []
    random_length = 5
    clean_input = true
    separator     = "-"
}

# Bastion Host NoOpsUtils
resource "azurenoopsutils_resource_name" "azbas" {
    name = "azure-bastion"
    resource_type = "azurerm_bastion_host"
    prefixes        = [var.org_name, var.environment,var.workload_name]
    suffixes        = []
    random_length = 5
    clean_input = true
    separator     = "-"
}