data "azurerm_subnet" "subnet_azure" {
  for_each             = var.network_interface_variables
  name                 = each.value["name_subnet"]
  resource_group_name  = each.value["resource_s_group_name"]
  virtual_network_name = each.value["virtual_network_name"]
}

resource "azurerm_network_interface" "network_interface" {
  for_each            = var.network_interface_variables
  name                = each.value["name_nic"]
  location            = each.value["location"]
  resource_group_name = each.value["resource_group_name"]

  ip_configuration {
    name                          = each.value["name_ip"]
    subnet_id                     = data.azurerm_subnet.subnet_azure[each.key].id
    private_ip_address_allocation = "Static"
    private_ip_address = each.value["private_ip"]
  }
}