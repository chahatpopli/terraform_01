resource "azurerm_network_security_group" "nsg_creation" {
    for_each = var.nsg_variables
  name                = each.value["nsg_name"]
  location            = each.value["nsg_location"]
  resource_group_name = each.value["nsg_rg"]

  security_rule {
    name                       = each.value["nsg_rule_name"]
    priority                   = each.value["nsg_rule_priority"]
    direction                  = each.value["nsg_rule_direction"]
    access                     = each.value["nsg_rule_access"]
    protocol                   = each.value["nsg_rule_protocol"]
    source_port_range          = each.value["nsg_rule_source_port"]
    destination_port_range     = each.value["nsg_rg_destination_port"]
    source_address_prefix      = each.value["nsg_rg_source_address_prefix"]
    destination_address_prefix = each.value["nsg_rg_destination_address_prefix"]
  }
}

