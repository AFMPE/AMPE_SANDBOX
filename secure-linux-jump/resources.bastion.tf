# Licensed under the MIT License.

resource "azurerm_bastion_host" "azbas" {
    depends_on = [
      azurerm_subnet.bastionsnet
    ]
  name = local.azbas_name
  location = var.location
  resource_group_name = local.hub_rg_name

  ip_configuration {
    name = "configuration"
    subnet_id = azurerm_subnet.bastionsnet.id
    public_ip_address_id = azurerm_public_ip.hub-bas-pip.id
  }
}