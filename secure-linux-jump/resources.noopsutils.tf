# Hub Resource Group NoOpsUtils
resource "azurenoopsutils_resource_name" "hub_rg" {
    name = "Hub-Resourcegroup"
    resource_type = "azurerm_resource_group"
    prefixes        = [var.org_name, var.environment, var.workload_name]
    suffixes        = []
    random_length = 5
    clean_input = true
    separator     = "-"
}

#
# Bastion Resources
#

# Virtual Net1 NoOpsUtils
resource "azurenoopsutils_resource_name" "hub_vnet" {
    name = "hub_vnet"
    resource_type = "azurerm_virtual_network"
    prefixes        = [var.org_name, var.environment,var.workload_name]
    suffixes        = []
    random_length = 5
    clean_input = true
    separator     = "-"
}


# SubNet 1a NoOpsUtils
resource "azurenoopsutils_resource_name" "hub_nsg" {
    name = "hub_nsg"
    resource_type = "azurerm_network_security_group"
    prefixes        = [var.org_name, var.environment,var.workload_name]
    suffixes        = []
    random_length = 5
    clean_input = true
    separator     = "-"
}

# Public IP Azure Bastion NoOpsUtils
resource "azurenoopsutils_resource_name" "bas-pip" {
    name = "bas-pip"
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

#
# Linux Jump Box Resources Naming
#
# Hub Resource Group NoOpsUtils
resource "azurenoopsutils_resource_name" "linux_rg" {
    name = "Linux-Resourcegroup"
    resource_type = "azurerm_resource_group"
    prefixes        = [var.org_name, var.environment, var.workload_name]
    suffixes        = []
    random_length = 5
    clean_input = true
    separator     = "-"
}

# Linux Name NoOpsUtils
resource "azurenoopsutils_resource_name" "LinuxJB" {
    name = "linux-JB"
    resource_type = "azurerm_linux_virtual_machine"
    prefixes        = [var.org_name, var.environment,var.workload_name]
    suffixes        = []
    random_length = 5
    clean_input = true
    separator     = "-"
}

# LinuxVM Vnet NoOpsUtils
resource "azurenoopsutils_resource_name" "linux_vnet" {
    name = "linux-vnet"
    resource_type = "azurerm_virtual_network"
    prefixes        = [var.org_name, var.environment,var.workload_name]
    suffixes        = []
    random_length = 5
    clean_input = true
    separator     = "-"
}

# Linux Subnet NoOpsUtils
resource "azurenoopsutils_resource_name" "linux_snet" {
    name = "linux_snet"
    resource_type = "azurerm_subnet"
    prefixes        = [var.org_name, var.environment,var.workload_name]
    suffixes        = []
    random_length = 5
    clean_input = true
    separator     = "-"
}

# Linux Subnet NSG NoOpsUtils
resource "azurenoopsutils_resource_name" "linux_nsg" {
    name = "linux_nsg"
    resource_type = "azurerm_network_security_group"
    prefixes        = [var.org_name, var.environment,var.workload_name]
    suffixes        = []
    random_length = 5
    clean_input = true
    separator     = "-"
}

# Linux Nic
resource "azurenoopsutils_resource_name" "linuxnic" {
  name          = var.workload_name
  resource_type = "azurerm_network_interface"
 prefixes        = [var.org_name, var.environment,var.workload_name]
    suffixes        = []
    random_length = 5
    clean_input = true
  separator     = "-"
}

# Linux Disk
resource "azurenoopsutils_resource_name" "linuxdisk" {
  for_each = var.data_disks

  name          = var.workload_name
  resource_type = "azurerm_managed_disk"
  prefixes        = [var.org_name, var.environment,var.workload_name]
suffixes        = []
random_length = 5
clean_input = true
  separator     = "-"
}