# Licensed under the MIT License.

resource "azurerm_bastion_host" "azbas" {
    depends_on = [
      azurerm_subnet.snet1a
    ]
  name = local.azbas_name
  location = var.location
  resource_group_name = local.resource_group_name

  ip_configuration {
    name = "configuration"
    subnet_id = azurerm_subnet.snet1a.id
    public_ip_address_id = azurerm_public_ip.pip.id
  }
}