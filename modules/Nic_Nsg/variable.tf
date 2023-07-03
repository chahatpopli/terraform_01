variable "nic_nsg_variables" {
  type = map(object({
   nic_name=string
   nsg_name=string
   nsg_rg_name=string
   nic_rg_name=string
  }))
}
