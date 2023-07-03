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
