variable "resource_group_variables" {
  type = map(object({
    name     = string
    location = string
  }))
}



variable "virtual_network_variables" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)

  }))
  default = {

  }
}

###########NSG##############
variable "nsg_variables" {
  type = map(object({
    nsg_name=string
    nsg_location=string
    nsg_rg=string
    nsg_rule_access=string
    nsg_rg_destination_address_prefix=string
    nsg_rg_destination_port=string
    nsg_rg_source_address_prefix=string
    nsg_rule_source_port=string
    nsg_rule_direction=string
    nsg_rule_name=string
    nsg_rule_priority=string
    nsg_rule_protocol=string
  }))
}

##########NIC NSG ##########

variable "nic_nsg_variables" {
  type = map(object({
   nic_name=string
   nsg_name=string
   nsg_rg_name=string
   nic_rg_name=string
  }))
}

###########NIC###############

variable "network_interface_variables" {
  type = map(object({
    name_subnet          = string
    resource_group_name  = string
    virtual_network_name = string
    resource_s_group_name = string

    name_nic            = string
    location            = string

    name_ip = string
    private_ip = string
  }))

}

###################################

variable "subnet_variables" {

  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
  default = {

  }
}

################ VM #################

variable "virtual_machine_variables" {
  type = map(object({
    name_nic              = string
    resource_group_name=string
    resource_group_name_nic = string
    name_vm             = string
    location            = string
    vm_size             = string
    zones = list(string)
   
    publisher = string
    offer     = string
    sku       = string
    version   = string

    computer_name=string
    admin_username = string
    admin_password = string

    name_os_disk      = string
    caching           = string
    create_option     = string
    managed_disk_type = string

  }))
}