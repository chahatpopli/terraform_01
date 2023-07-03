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