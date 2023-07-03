provider "azurerm" {
  features {

  }
}

################# rg #####################
module "rg" {
  source                   = "./modules/resource_group"
  resource_group_variables = var.resource_group_variables
}

################### vnet #################

module "vnet" {
  source                    = "./modules/vnet"
  virtual_network_variables = var.virtual_network_variables
  depends_on = [
    module.rg
  ]
}
###########subnet#################

module "subnet" {
  source           = "./modules/subnet"
  subnet_variables = var.subnet_variables
  depends_on = [
    module.rg,
    module.vnet
  ]

}
#################NSG###################
module "nsg" {
  source = "./modules/NSG"
  nsg_variables = var.nsg_variables
  depends_on = [ module.rg ]
}

################## nic #################
module "nicc01" {
  source                      = "./modules/NIC"
  network_interface_variables = var.network_interface_variables
  depends_on = [
    module.rg,
    module.vnet,
    module.subnet
  ]
}
###########Nic NSG##################

module "nsg_nic" {
  source = "./modules/Nic_Nsg"
  nic_nsg_variables = var.nic_nsg_variables
  depends_on = [ module.nsg, module.nicc01, module.rg ]
  
}

############### VM ##################
 
 module "vm" {
    source = "./modules/virtual_machines"
    virtual_machine_variables = var.virtual_machine_variables
    depends_on = [
      module.rg,
      module.vnet, 
      module.subnet,
      module.nicc01
    ]
 }