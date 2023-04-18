# Licensed under the MIT License.

#------------------------------------------------------------
# Local Naming configuration - Default (required). 
#------------------------------------------------------------

locals {

  # Hub-Bastion Networking Naming
  hub_rg_name = azurenoopsutils_resource_name.hub_rg.result
  hub_vnet_name = azurenoopsutils_resource_name.hub_vnet.result
  hub_bas_name = "AzureBastionSubnet"
  hub_nsg_name = azurenoopsutils_resource_name.hub_nsg.result
  hub_bas_pip_name = azurenoopsutils_resource_name.bas-pip.result
  azbas_name = azurenoopsutils_resource_name.azbas.result

  # Linux Naming
  linux_rg_name = azurenoopsutils_resource_name.linux_rg.result
  linux_name = azurenoopsutils_resource_name.LinuxJB.result
  linux_vnet_name = azurenoopsutils_resource_name.linux_vnet.result
  linux_snet_name = azurenoopsutils_resource_name.linux_snet.result
  linux_nsg_name = azurenoopsutils_resource_name.linux_nsg.result
}