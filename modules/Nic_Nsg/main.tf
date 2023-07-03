data "azurerm_network_interface" "network_interface" {
  for_each = var.nic_nsg_variables
  name                = each.value["nic_name"]
  resource_group_name = each.value["nic_rg_name"]
}

data "azurerm_network_security_group" "nsg_creation"{
    for_each = var.nic_nsg_variables
    name = each.value["nsg_name"]
    resource_group_name = each.value["nsg_rg_name"]

}

resource "azurerm_network_interface_security_group_association" "nic_nsg_association" {
  for_each = var.nic_nsg_variables
  network_interface_id = data.azurerm_network_interface.network_interface[each.key].id
  network_security_group_id = data.azurerm_network_security_group.nsg_creation[each.key].id
}