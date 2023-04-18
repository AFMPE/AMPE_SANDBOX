# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

#------------------------------------------------------------
# Local Naming configuration - Default (required). 
#------------------------------------------------------------

locals {
  resource_group_name = azurenoopsutils_resource_name.rg.result
  virtual_net1_name = azurenoopsutils_resource_name.vnet1.result
  subnet_1a_name = azurenoopsutils_resource_name.snet1a.result
  nsg1a_name = azurenoopsutils_resource_name.nsg1a.result

}