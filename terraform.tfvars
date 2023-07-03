resource_group_variables = {
  "rg01" = {
    location = "eastus"
    name     = "LP-Prod-AD-EUS-RG"
  }
  "rg02" = {
    location = "eastus"
    name     = "LP-Prod-Inside-EUS-RG"
  }
  "rg03" = {
    location = "eastus"
    name     = "LP-Prod-DevOPs-EUS-RG"
  }
  "rg04" = {
    location = "eastus"
    name     = "LP-Prod-DMZ-EUS-RG"
  }
  "rg05" = {
    location = "eastus"
    name     = "LP-Prod-NWMGMT-EUS-RG"
  }
  "rg06" = {
    location = "eastus"
    name     = "LP-Dev-Inside-EUS-RG"
  }
  "rg07" = {
    location = "eastus"
    name     = "LP-Prod-Jump-EUS-RG"
  }
}


#############vnet#############

virtual_network_variables = {
  "my-vnet01" = {
    address_space       = ["172.27.0.0/16"]
    location            = "eastus"
    name                = "LP-EUS-VNET-01"
    resource_group_name = "LP-Prod-NWMGMT-EUS-RG"
  }
}
################## subnet ###################

subnet_variables = {
  "subnet01" = {
    address_prefixes     = ["172.27.96.0/20"]
    name                 = "LP-Prod-NWMGMT-EUS-SNET"
    resource_group_name  = "LP-Prod-NWMGMT-EUS-RG"
    virtual_network_name = "LP-EUS-VNET-01"
  }
  "subnet02" = {
    address_prefixes     = ["172.27.132.0/24"]
    name                 = "LP-Prod-AD-EUS-SNET"
    resource_group_name  = "LP-Prod-NWMGMT-EUS-RG"
    virtual_network_name = "LP-EUS-VNET-01"
  }
  "subnet03" = {
    address_prefixes     = ["172.27.16.0/22"]
    name                 = "LP-Prod-Inside-EUS-SNET"
    resource_group_name  = "LP-Prod-NWMGMT-EUS-RG"
    virtual_network_name = "LP-EUS-VNET-01"
  }

  "subnet04" = {
    address_prefixes     = ["172.27.130.0/24"]
    name                 = "LP-Prod-DevOps-EUS-SNET"
    resource_group_name  = "LP-Prod-NWMGMT-EUS-RG"
    virtual_network_name = "LP-EUS-VNET-01"
  }
  "subnet05" = {
    address_prefixes     = ["172.27.32.0/22"]
    name                 = "LP-Prod-DMZ-EUS-SNET"
    resource_group_name  = "LP-Prod-NWMGMT-EUS-RG"
    virtual_network_name = "LP-EUS-VNET-01"
  }
  "subnet06" = {
    address_prefixes     = ["172.27.128.0/27"]
    name                 = "LP-Prod-Jump-EUS-SNET"
    resource_group_name  = "LP-Prod-NWMGMT-EUS-RG"
    virtual_network_name = "LP-EUS-VNET-01"
  }
  "subnet07" = {
    address_prefixes     = ["172.27.129.0/24"]
    name                 = "LP-Dev-Inside-EUS-SNET"
    resource_group_name  = "LP-Prod-NWMGMT-EUS-RG"
    virtual_network_name = "LP-EUS-VNET-01"
  }
}

############ nsg ##############

nsg_variables = {
  "nsg01" = {
    nsg_name = "LP-Prod-Web1-NSG"
    nsg_rg = "LP-Prod-NWMGMT-EUS-RG"
    nsg_location = "eastus"
    nsg_rule_name="AllowRDP"
    nsg_rule_priority = "100"
    nsg_rule_protocol = "Tcp"
    nsg_rg_destination_address_prefix = "*"
    nsg_rg_destination_port = "3389"
    nsg_rg_source_address_prefix = "*"
    nsg_rule_access = "Allow"
    nsg_rule_direction = "Inbound"
    nsg_rule_source_port = "*"
  }
  "nsg02" = {
    nsg_name = "LP-Prod-Web2-NSG"
    nsg_rg = "LP-Prod-NWMGMT-EUS-RG"
    nsg_location = "eastus"
    nsg_rule_name="AllowRDP"
    nsg_rule_priority = "100"
    nsg_rule_protocol = "Tcp"
    nsg_rg_destination_address_prefix = "*"
    nsg_rg_destination_port = "3389"
    nsg_rg_source_address_prefix = "*"
    nsg_rule_access = "Allow"
    nsg_rule_direction = "Inbound"
    nsg_rule_source_port = "*"
  }
  "nsg03" = {
    nsg_name = "LP-Prod-Web3-NSG"
    nsg_rg = "LP-Prod-NWMGMT-EUS-RG"
    nsg_location = "eastus"
    nsg_rule_name="AllowRDP"
    nsg_rule_priority = "100"
    nsg_rule_protocol = "Tcp"
    nsg_rg_destination_address_prefix = "*"
    nsg_rg_destination_port = "3389"
    nsg_rg_source_address_prefix = "*"
    nsg_rule_access = "Allow"
    nsg_rule_direction = "Inbound"
    nsg_rule_source_port = "*"
  }
  "nsg04" = {
    nsg_name = "LP-Prod-Web4-NSG"
    nsg_rg = "LP-Prod-NWMGMT-EUS-RG"
    nsg_location = "eastus"
    nsg_rule_name="AllowRDP"
    nsg_rule_priority = "100"
    nsg_rule_protocol = "Tcp"
    nsg_rg_destination_address_prefix = "*"
    nsg_rg_destination_port = "3389"
    nsg_rg_source_address_prefix = "*"
    nsg_rule_access = "Allow"
    nsg_rule_direction = "Inbound"
    nsg_rule_source_port = "*"
  }
  "nsg05" = {
    nsg_name = "LP-Prod-AD1-NSG"
    nsg_rg = "LP-Prod-NWMGMT-EUS-RG"
    nsg_location = "eastus"
    nsg_rule_name="AllowRDP"
    nsg_rule_priority = "100"
    nsg_rule_protocol = "Tcp"
    nsg_rg_destination_address_prefix = "*"
    nsg_rg_destination_port = "3389"
    nsg_rg_source_address_prefix = "*"
    nsg_rule_access = "Allow"
    nsg_rule_direction = "Inbound"
    nsg_rule_source_port = "*"
  }
  "nsg06" = {
    nsg_name = "LP-Prod-AD2-NSG"
    nsg_rg = "LP-Prod-NWMGMT-EUS-RG"
    nsg_location = "eastus"
    nsg_rule_name="AllowRDP"
    nsg_rule_priority = "100"
    nsg_rule_protocol = "Tcp"
    nsg_rg_destination_address_prefix = "*"
    nsg_rg_destination_port = "3389"
    nsg_rg_source_address_prefix = "*"
    nsg_rule_access = "Allow"
    nsg_rule_direction = "Inbound"
    nsg_rule_source_port = "*"
  }
  "nsg07" = {
    nsg_name = "LP-Prod-Search1-NSG"
    nsg_rg = "LP-Prod-NWMGMT-EUS-RG"
    nsg_location = "eastus"
    nsg_rule_name="AllowRDP"
    nsg_rule_priority = "100"
    nsg_rule_protocol = "Tcp"
    nsg_rg_destination_address_prefix = "*"
    nsg_rg_destination_port = "3389"
    nsg_rg_source_address_prefix = "*"
    nsg_rule_access = "Allow"
    nsg_rule_direction = "Inbound"
    nsg_rule_source_port = "*"
  }
  "nsg08" = {
    nsg_name = "LP-Prod-Search2-NSG"
    nsg_rg = "LP-Prod-NWMGMT-EUS-RG"
    nsg_location = "eastus"
    nsg_rule_name="AllowRDP"
    nsg_rule_priority = "100"
    nsg_rule_protocol = "Tcp"
    nsg_rg_destination_address_prefix = "*"
    nsg_rg_destination_port = "3389"
    nsg_rg_source_address_prefix = "*"
    nsg_rule_access = "Allow"
    nsg_rule_direction = "Inbound"
    nsg_rule_source_port = "*"
  }
  "nsg09" = {
    nsg_name = "LP-Prod-Search3-NSG"
    nsg_rg = "LP-Prod-NWMGMT-EUS-RG"
    nsg_location = "eastus"
    nsg_rule_name="AllowRDP"
    nsg_rule_priority = "100"
    nsg_rule_protocol = "Tcp"
    nsg_rg_destination_address_prefix = "*"
    nsg_rg_destination_port = "3389"
    nsg_rg_source_address_prefix = "*"
    nsg_rule_access = "Allow"
    nsg_rule_direction = "Inbound"
    nsg_rule_source_port = "*"
  }
  "nsg10" = {
    nsg_name = "LP-Prod-Search4-NSG"
    nsg_rg = "LP-Prod-NWMGMT-EUS-RG"
    nsg_location = "eastus"
    nsg_rule_name="AllowRDP"
    nsg_rule_priority = "100"
    nsg_rule_protocol = "Tcp"
    nsg_rg_destination_address_prefix = "*"
    nsg_rg_destination_port = "3389"
    nsg_rg_source_address_prefix = "*"
    nsg_rule_access = "Allow"
    nsg_rule_direction = "Inbound"
    nsg_rule_source_port = "*"
  }
  "nsg11" = {
    nsg_name = "LP-Prod-Jumpbox-NSG"
    nsg_rg = "LP-Prod-NWMGMT-EUS-RG"
    nsg_location = "eastus"
    nsg_rule_name="AllowRDP"
    nsg_rule_priority = "100"
    nsg_rule_protocol = "Tcp"
    nsg_rg_destination_address_prefix = "*"
    nsg_rg_destination_port = "3389"
    nsg_rg_source_address_prefix = "*"
    nsg_rule_access = "Allow"
    nsg_rule_direction = "Inbound"
    nsg_rule_source_port = "*"
  }
} 


############ nic ###############

network_interface_variables = {
  "nic01" = {
    location             = "eastus"
    name_ip              = "web1_primary_ip"
    name_nic             = "LP-Prod-EUS-Web1-NIC"
    name_subnet          = "LP-Prod-DMZ-EUS-SNET"
    resource_group_name  = "LP-Prod-DMZ-EUS-RG"
    virtual_network_name = "LP-EUS-VNET-01"
    private_ip           = "172.27.32.234"
    resource_s_group_name = "LP-Prod-NWMGMT-EUS-RG"
  }
  "nic02" = {
    location             = "eastus"
    name_ip              = "web2_primary_ip"
    name_nic             = "LP-Prod-EUS-Web2-NIC"
    name_subnet          = "LP-Prod-DMZ-EUS-SNET"
    resource_group_name  = "LP-Prod-DMZ-EUS-RG"
    virtual_network_name = "LP-EUS-VNET-01"
    private_ip           = "172.27.32.235"
    resource_s_group_name = "LP-Prod-NWMGMT-EUS-RG"
  }
  "nic03" = {
    location             = "eastus"
    name_ip              = "web3_primary_ip"
    name_nic             = "LP-Prod-EUS-Web3-NIC"
    name_subnet          = "LP-Prod-DMZ-EUS-SNET"
    resource_group_name  = "LP-Prod-DMZ-EUS-RG"
    virtual_network_name = "LP-EUS-VNET-01"
    private_ip           = "172.27.32.236"
    resource_s_group_name = "LP-Prod-NWMGMT-EUS-RG"
  }
  "nic04" = {
    location             = "eastus"
    name_ip              = "web4_primary_ip"
    name_nic             = "LP-Prod-EUS-Web4-NIC"
    name_subnet          = "LP-Prod-DMZ-EUS-SNET"
    resource_group_name  = "LP-Prod-DMZ-EUS-RG"
    virtual_network_name = "LP-EUS-VNET-01"
    private_ip           = "172.27.32.237"
    resource_s_group_name = "LP-Prod-NWMGMT-EUS-RG"
  }
  "nic05" = {
    location             = "eastus"
    name_ip              = "Ad1_primary_ip"
    name_nic             = "LP-Prod-EUS-AD1-NIC"
    name_subnet          = "LP-Prod-AD-EUS-SNET"
    resource_group_name  = "LP-Prod-AD-EUS-RG"
    virtual_network_name = "LP-EUS-VNET-01"
    private_ip           = "172.27.132.87"
    resource_s_group_name = "LP-Prod-NWMGMT-EUS-RG"
  }
  "nic06" = {
    location             = "eastus"
    name_ip              = "Ad2_primary_ip"
    name_nic             = "LP-Prod-EUS-AD2-NIC"
    name_subnet          = "LP-Prod-AD-EUS-SNET"
    resource_group_name  = "LP-Prod-AD-EUS-RG"
    virtual_network_name = "LP-EUS-VNET-01"
    private_ip           = "172.27.132.187"
    resource_s_group_name = "LP-Prod-NWMGMT-EUS-RG"
  }
  "nic07" = {
    location             = "eastus"
    name_ip              = "search1_primary_ip"
    name_nic             = "LP-Prod-EUS-Search1-NIC"
    name_subnet          = "LP-Prod-Inside-EUS-SNET"
    resource_group_name  = "LP-Prod-Inside-EUS-RG"
    virtual_network_name = "LP-EUS-VNET-01"
    private_ip           = "172.27.16.79"
    resource_s_group_name = "LP-Prod-NWMGMT-EUS-RG"
  }
  "nic08" = {
    location             = "eastus"
    name_ip              = "search2_primary_ip"
    name_nic             = "LP-Prod-EUS-Search2-NIC"
    name_subnet          = "LP-Prod-Inside-EUS-SNET"
    resource_group_name  = "LP-Prod-Inside-EUS-RG"
    virtual_network_name = "LP-EUS-VNET-01"
    private_ip           = "172.27.16.224"
    resource_s_group_name = "LP-Prod-NWMGMT-EUS-RG"
  }
  "nic09" = {
    location             = "eastus"
    name_ip              = "search3_primary_ip"
    name_nic             = "LP-Prod-EUS-Search3-NIC"
    name_subnet          = "LP-Prod-Inside-EUS-SNET"
    resource_group_name  = "LP-Prod-Inside-EUS-RG"
    virtual_network_name = "LP-EUS-VNET-01"
    private_ip           = "172.27.16.225"
    resource_s_group_name = "LP-Prod-NWMGMT-EUS-RG"
  }
  "nic10" = {
    location             = "eastus"
    name_ip              = "search4_primary_ip"
    name_nic             = "LP-Prod-EUS-Search4-NIC"
    name_subnet          = "LP-Prod-Inside-EUS-SNET"
    resource_group_name  = "LP-Prod-Inside-EUS-RG"
    virtual_network_name = "LP-EUS-VNET-01"
    private_ip           = "172.27.16.99"
    resource_s_group_name = "LP-Prod-NWMGMT-EUS-RG"
  }
  "nic11" = {
    location             = "eastus"
    name_ip              = "jumpbox_primary_ip"
    name_nic             = "LP-Prod-EUS-Jumpbox-NIC"
    name_subnet          = "LP-Prod-Jump-EUS-SNET"
    resource_group_name  = "LP-Prod-Jump-EUS-RG"
    virtual_network_name = "LP-EUS-VNET-01"
    private_ip           = "172.27.128.10"
    resource_s_group_name = "LP-Prod-NWMGMT-EUS-RG"
  }
}

############## Nic NSG ##############

nic_nsg_variables = {
  "asso01" = {
    nic_name = "LP-Prod-EUS-Web1-NIC"
    nic_rg_name = "LP-Prod-DMZ-EUS-RG"
    nsg_name = "LP-Prod-Web1-NSG"
    nsg_rg_name = "LP-Prod-NWMGMT-EUS-RG"
  }
  "asso02" = {
    nic_name = "LP-Prod-EUS-Web2-NIC"
    nic_rg_name = "LP-Prod-DMZ-EUS-RG"
    nsg_name = "LP-Prod-Web2-NSG"
    nsg_rg_name = "LP-Prod-NWMGMT-EUS-RG"
  }
  "asso03" = {
    nic_name = "LP-Prod-EUS-Web3-NIC"
    nic_rg_name = "LP-Prod-DMZ-EUS-RG"
    nsg_name = "LP-Prod-Web3-NSG"
    nsg_rg_name = "LP-Prod-NWMGMT-EUS-RG"
  }
  "asso04" = {
    nic_name = "LP-Prod-EUS-Web4-NIC"
    nic_rg_name = "LP-Prod-DMZ-EUS-RG"
    nsg_name = "LP-Prod-Web4-NSG"
    nsg_rg_name = "LP-Prod-NWMGMT-EUS-RG"
  }
  "asso05" = {
    nic_name = "LP-Prod-EUS-AD1-NIC"
    nic_rg_name = "LP-Prod-AD-EUS-RG"
    nsg_name = "LP-Prod-AD1-NSG"
    nsg_rg_name = "LP-Prod-NWMGMT-EUS-RG"
  }
  "asso06" = {
    nic_name = "LP-Prod-EUS-AD2-NIC"
    nic_rg_name = "LP-Prod-AD-EUS-RG"
    nsg_name = "LP-Prod-AD2-NSG"
    nsg_rg_name = "LP-Prod-NWMGMT-EUS-RG"
  }
  "asso07" = {
    nic_name = "LP-Prod-EUS-Search1-NIC"
    nic_rg_name = "LP-Prod-Inside-EUS-RG"
    nsg_name = "LP-Prod-Search1-NSG"
    nsg_rg_name = "LP-Prod-NWMGMT-EUS-RG"
  }
  "asso08" = {
    nic_name = "LP-Prod-EUS-Search2-NIC"
    nic_rg_name = "LP-Prod-Inside-EUS-RG"
    nsg_name = "LP-Prod-Search2-NSG"
    nsg_rg_name = "LP-Prod-NWMGMT-EUS-RG"
  }
  "asso09" = {
    nic_name = "LP-Prod-EUS-Search3-NIC"
    nic_rg_name = "LP-Prod-Inside-EUS-RG"
    nsg_name = "LP-Prod-Search3-NSG"
    nsg_rg_name = "LP-Prod-NWMGMT-EUS-RG"
  }
  "asso10" = {
    nic_name = "LP-Prod-EUS-Search4-NIC"
    nic_rg_name = "LP-Prod-Inside-EUS-RG"
    nsg_name = "LP-Prod-Search4-NSG"
    nsg_rg_name = "LP-Prod-NWMGMT-EUS-RG"
  }
  "asso11" = {
    nic_name = "LP-Prod-EUS-Jumpbox-NIC"
    nic_rg_name = "LP-Prod-Jump-EUS-RG"
    nsg_name = "LP-Prod-Jumpbox-NSG"
    nsg_rg_name = "LP-Prod-NWMGMT-EUS-RG"
  }
}

############### VM #################

virtual_machine_variables = {
  "vm01" = {
    admin_password = "Secret@123456"
    admin_username = "LampsPlus"
    caching = "ReadWrite"
    computer_name="webone"
    create_option = "FromImage"
    location = "eastus"
    managed_disk_type = "Standard_LRS"
    name_nic = "LP-Prod-EUS-Web1-NIC"
    name_os_disk = "LP-Prod-Web1-OSDisk"
    name_vm = "LP-Prod-EUS-VM-Web1"
    offer = "WindowsServer"
    publisher = "MicrosoftWindowsServer"
    resource_group_name = "LP-Prod-DMZ-EUS-RG"
    resource_group_name_nic="LP-Prod-DMZ-EUS-RG"
    sku = "2022-Datacenter"
    version = "latest"
    vm_size = "Standard_F16s_v2"
    zones = ["1"]
  }
  "vm02" = {
    admin_password = "Secret@123456"
    admin_username = "LampsPlus"
    caching = "ReadWrite"
    computer_name="webtwo"
    create_option = "FromImage"
    location = "eastus"
    managed_disk_type = "Standard_LRS"
    name_nic = "LP-Prod-EUS-Web2-NIC"
    name_os_disk = "LP-Prod-Web2-OSDisk"
    name_vm = "LP-Prod-EUS-VM-Web2"
    offer = "WindowsServer"
    publisher = "MicrosoftWindowsServer"
    resource_group_name = "LP-Prod-DMZ-EUS-RG"
    resource_group_name_nic="LP-Prod-DMZ-EUS-RG"
    sku = "2022-Datacenter"
    version = "latest"
    vm_size = "Standard_F16s_v2"
    zones = ["2"]
  }
  "vm03" = {
    admin_password = "Secret@123456"
    admin_username = "LampsPlus"
    caching = "ReadWrite"
    computer_name="webthree"
    create_option = "FromImage"
    location = "eastus"
    managed_disk_type = "Standard_LRS"
    name_nic = "LP-Prod-EUS-Web3-NIC"
    name_os_disk = "LP-Prod-Web3-OSDisk"
    name_vm = "LP-Prod-EUS-VM-Web3"
    offer = "WindowsServer"
    publisher = "MicrosoftWindowsServer"
    resource_group_name = "LP-Prod-DMZ-EUS-RG"
    resource_group_name_nic="LP-Prod-DMZ-EUS-RG"
    sku = "2022-Datacenter"
    version = "latest"
    vm_size = "Standard_F16s_v2"
    zones = ["3"]
  }
  "vm04" = {
    admin_password = "Secret@123456"
    admin_username = "LampsPlus"
    caching = "ReadWrite"
    computer_name="webfour"
    create_option = "FromImage"
    location = "eastus"
    managed_disk_type = "Standard_LRS"
    name_nic = "LP-Prod-EUS-Web4-NIC"
    name_os_disk = "LP-Prod-Web4-OSDisk"
    name_vm = "LP-Prod-EUS-VM-Web4"
    offer = "WindowsServer"
    publisher = "MicrosoftWindowsServer"
    resource_group_name = "LP-Prod-DMZ-EUS-RG"
    resource_group_name_nic="LP-Prod-DMZ-EUS-RG"
    sku = "2022-Datacenter"
    version = "latest"
    vm_size = "Standard_F16s_v2"
    zones = ["1"]
  }
  "vm05" = {
    admin_password = "Secret@123456"
    admin_username = "LampsPlus"
    caching = "ReadWrite"
    computer_name="adone"
    create_option = "FromImage"
    location = "eastus"
    managed_disk_type = "Standard_LRS"
    name_nic = "LP-Prod-EUS-AD1-NIC"
    name_os_disk = "LP-Prod-AD1-OSDisk"
    name_vm = "LP-Prod-EUS-VM-AD1"
    offer = "WindowsServer"
    publisher = "MicrosoftWindowsServer"
    resource_group_name = "LP-Prod-AD-EUS-RG"
    resource_group_name_nic="LP-Prod-AD-EUS-RG"
    sku = "2022-Datacenter"
    version = "latest"
    vm_size = "Standard_F4s_v2"
    zones = ["1"]
  }
  "vm06" = {
    admin_password = "Secret@123456"
    admin_username = "LampsPlus"
    caching = "ReadWrite"
    computer_name="adtwo"
    create_option = "FromImage"
    location = "eastus"
    managed_disk_type = "Standard_LRS"
    name_nic = "LP-Prod-EUS-AD2-NIC"
    name_os_disk = "LP-Prod-AD2-OSDisk"
    name_vm = "LP-Prod-EUS-VM-AD2"
    offer = "WindowsServer"
    publisher = "MicrosoftWindowsServer"
    resource_group_name = "LP-Prod-AD-EUS-RG"
    resource_group_name_nic="LP-Prod-AD-EUS-RG"
    sku = "2022-Datacenter"
    version = "latest"
    vm_size = "Standard_F4s_v2"
    zones = ["2"]
  }
  "vm07" = {
    admin_password = "Secret@123456"
    admin_username = "LampsPlus"
    caching = "ReadWrite"
    computer_name="searchone"
    create_option = "FromImage"
    location = "eastus"
    managed_disk_type = "Standard_LRS"
    name_nic = "LP-Prod-EUS-Search1-NIC"
    name_os_disk = "LP-Prod-Search1-OSDisk"
    name_vm = "LP-Prod-EUS-VM-Search1"
    offer = "WindowsServer"
    publisher = "MicrosoftWindowsServer"
    resource_group_name = "LP-Prod-Inside-EUS-RG"
    resource_group_name_nic="LP-Prod-Inside-EUS-RG"
    sku = "2022-Datacenter"
    version = "latest"
    vm_size = "Standard_D16as_v5"
    zones = ["1"]
  }
  "vm08" = {
    admin_password = "Secret@123456"
    admin_username = "LampsPlus"
    caching = "ReadWrite"
    computer_name="searchtwo"
    create_option = "FromImage"
    location = "eastus"
    managed_disk_type = "Standard_LRS"
    name_nic = "LP-Prod-EUS-Search2-NIC"
    name_os_disk = "LP-Prod-Search2-OSDisk"
    name_vm = "LP-Prod-EUS-VM-Search2"
    offer = "WindowsServer"
    publisher = "MicrosoftWindowsServer"
    resource_group_name = "LP-Prod-Inside-EUS-RG"
    resource_group_name_nic="LP-Prod-Inside-EUS-RG"
    sku = "2022-Datacenter"
    version = "latest"
    vm_size = "Standard_D8s_v5"
    zones = ["2"]
  }
  "vm09" = {
    admin_password = "Secret@123456"
    admin_username = "LampsPlus"
    caching = "ReadWrite"
    computer_name="searchthree"
    create_option = "FromImage"
    location = "eastus"
    managed_disk_type = "Standard_LRS"
    name_nic = "LP-Prod-EUS-Search3-NIC"
    name_os_disk = "LP-Prod-Search3-OSDisk"
    name_vm = "LP-Prod-EUS-VM-Search3"
    offer = "WindowsServer"
    publisher = "MicrosoftWindowsServer"
    resource_group_name = "LP-Prod-Inside-EUS-RG"
    resource_group_name_nic="LP-Prod-Inside-EUS-RG"
    sku = "2022-Datacenter"
    version = "latest"
    vm_size = "Standard_D8s_v5"
    zones = ["3"]
  }
  "vm10" = {
    admin_password = "Secret@123456"
    admin_username = "LampsPlus"
    caching = "ReadWrite"
    computer_name="searchfour"
    create_option = "FromImage"
    location = "eastus"
    managed_disk_type = "Standard_LRS"
    name_nic = "LP-Prod-EUS-Search4-NIC"
    name_os_disk = "LP-Prod-Search4-OSDisk"
    name_vm = "LP-Prod-EUS-VM-Search4"
    offer = "WindowsServer"
    publisher = "MicrosoftWindowsServer"
    resource_group_name = "LP-Prod-Inside-EUS-RG"
    resource_group_name_nic="LP-Prod-Inside-EUS-RG"
    sku = "2022-Datacenter"
    version = "latest"
    vm_size = "Standard_F16s_v2"
    zones = ["1"]
  }
  "vm11" = {
    admin_password = "Secret@123456"
    admin_username = "LampsPlus"
    caching = "ReadWrite"
    computer_name="jumpbox"
    create_option = "FromImage"
    location = "eastus"
    managed_disk_type = "Standard_LRS"
    name_nic = "LP-Prod-EUS-Jumpbox-NIC"
    name_os_disk = "LP-Prod-Jumpbox-OSDisk"
    name_vm = "LP-Prod-EUS-VM-Jumpbox"
    offer = "WindowsServer"
    publisher = "MicrosoftWindowsServer"
    resource_group_name = "LP-Prod-Jump-EUS-RG"
    resource_group_name_nic="LP-Prod-Jump-EUS-RG"
    sku = "2022-Datacenter"
    version = "latest"
    vm_size = "Standard_D4s_v5"
    zones = ["1"]
  }
}