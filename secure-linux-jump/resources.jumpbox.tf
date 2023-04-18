# Licensed under the MIT License.

# VM NIC
resource "azurerm_network_interface" "jbnic" {
  depends_on = [
    azurerm_subnet.linuxsnet
  ]
  name = local.linux_nic
  location = var.location

  ip_configuration {
    name = "internal"
    subnet_id = azurerm_subnet.linuxsnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

# Linux NIC NSG Association
resource "azurerm_network_interface_security_group_association" "nicNSG" {
  depends_on = [
    azurerm_network_interface.jbnic,
    azurerm_network_security_group.linuxnsg
  ]
  network_interface_id = azurerm_network_interface.jbnic.id
  network_security_group_id = azurerm_network_security_group.linuxnsg.id
}

# Linux VM
resource "azurerm_linux_virtual_machine" "linuxjb" {
  depends_on = [
    azurerm_network_interface.jbnic
  ]
  name = local.linux_name
  resource_group_name = local.linux_rg_name
  computer_name = "${var.workload}jump"
  location = var.location
  size = "Standard_F2"
  admin_username = "adminuser"
  admin_password = "password"

  network_interface_ids = [
    azurerm_network_interface.jbnic.id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}