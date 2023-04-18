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
resource "azurenoopsutils_resource_name" "snet1a" {
    name = "subnet1a"
    resource_type = "azurerm_subnet"
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