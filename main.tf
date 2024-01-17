resource "azurerm_linux_virtual_machine" "Instance" {
	name = local.InstanceName
	location = local.ResourceGroupLocation
	resource_group_name = local.ResourceGroupName
	tags = {
		Name = local.InstanceName
		Owner = local.UserEmailTag
		Project = local.UserProjectTag
		ResourceGroup = local.ResourceGroupName
		Location = local.ResourceGroupLocation
	}
	size = local.VmSize
	source_image_id = data.azurerm_shared_image_version.SharedImageVersion.id
	os_disk {
		caching = "ReadWrite"
		storage_account_type = "Standard_LRS"
	}
	computer_name = local.InstanceName
	admin_username = local.AdminUserName
	admin_password = local.AdminPassword
	disable_password_authentication = local.DisablePasswordAuthentication
	network_interface_ids = [
		azurerm_network_interface.Eth0.id,
		azurerm_network_interface.Eth1.id,
		azurerm_network_interface.Eth2.id
	]
	boot_diagnostics {}
	depends_on = [
		azurerm_network_interface.Eth0,
		azurerm_network_interface.Eth1,
		azurerm_network_interface.Eth2
	]
	timeouts {
		create = "9m"
		delete = "10m"
	}
}

resource "azurerm_network_interface" "Eth0" {
	name = local.Eth0Name
	location = local.ResourceGroupLocation
	resource_group_name = local.ResourceGroupName
	tags = {
		Owner = local.UserEmailTag
		Project = local.UserProjectTag
		ResourceGroup = local.ResourceGroupName
		Location = local.ResourceGroupLocation
	}
	ip_configuration {
		name = "ipconfig1"
		private_ip_address = local.Eth0IpAddress
		private_ip_address_allocation = "Static"
		public_ip_address_id = azurerm_public_ip.Eth0PublicIpAddress.id
		subnet_id = local.Eth0SubnetId
		primary = "true"
		private_ip_address_version = "IPv4"
	}
	dns_servers = []
	enable_accelerated_networking = local.EnableAcceleratedNetworking
	enable_ip_forwarding = local.EnableIpForwarding
	depends_on = [
		azurerm_public_ip.Eth0PublicIpAddress
	]
}

resource "azurerm_network_interface" "Eth1" {
	name = local.Eth1Name
	location = local.ResourceGroupLocation
	resource_group_name = local.ResourceGroupName
	tags = {
		Owner = local.UserEmailTag
		Project = local.UserProjectTag
		ResourceGroup = local.ResourceGroupName
		Location = local.ResourceGroupLocation
	}
	ip_configuration {
		name = "ipconfig1"
		private_ip_address = local.Eth1IpAddresses[0]
		private_ip_address_allocation = "Static"
		subnet_id = local.Eth1SubnetId
		primary = "true"
		private_ip_address_version = "IPv4"
	}
	ip_configuration {
		name = "ipconfig2"
		private_ip_address = local.Eth1IpAddresses[1]
		private_ip_address_allocation = "Static"
		subnet_id = local.Eth1SubnetId
		primary = "false"
		private_ip_address_version = "IPv4"
	}
	ip_configuration {
		name = "ipconfig3"
		private_ip_address = local.Eth1IpAddresses[2]
		private_ip_address_allocation = "Static"
		subnet_id = local.Eth1SubnetId
		primary = "false"
		private_ip_address_version = "IPv4"
	}
	ip_configuration {
		name = "ipconfig4"
		private_ip_address = local.Eth1IpAddresses[3]
		private_ip_address_allocation = "Static"
		subnet_id = local.Eth1SubnetId
		primary = "false"
		private_ip_address_version = "IPv4"
	}
	ip_configuration {
		name = "ipconfig5"
		private_ip_address = local.Eth1IpAddresses[4]
		private_ip_address_allocation = "Static"
		subnet_id = local.Eth1SubnetId
		primary = "false"
		private_ip_address_version = "IPv4"
	}
	ip_configuration {
		name = "ipconfig6"
		private_ip_address = local.Eth1IpAddresses[5]
		private_ip_address_allocation = "Static"
		subnet_id = local.Eth1SubnetId
		primary = "false"
		private_ip_address_version = "IPv4"
	}
	ip_configuration {
		name = "ipconfig7"
		private_ip_address = local.Eth1IpAddresses[6]
		private_ip_address_allocation = "Static"
		subnet_id = local.Eth1SubnetId
		primary = "false"
		private_ip_address_version = "IPv4"
	}
	ip_configuration {
		name = "ipconfig8"
		private_ip_address = local.Eth1IpAddresses[7]
		private_ip_address_allocation = "Static"
		subnet_id = local.Eth1SubnetId
		primary = "false"
		private_ip_address_version = "IPv4"
	}
	ip_configuration {
		name = "ipconfig9"
		private_ip_address = local.Eth1IpAddresses[8]
		private_ip_address_allocation = "Static"
		subnet_id = local.Eth1SubnetId
		primary = "false"
		private_ip_address_version = "IPv4"
	}
	ip_configuration {
		name = "ipconfigA"
		private_ip_address = local.Eth1IpAddresses[9]
		private_ip_address_allocation = "Static"
		subnet_id = local.Eth1SubnetId
		primary = "false"
		private_ip_address_version = "IPv4"
	}
	dns_servers = []
	enable_accelerated_networking = local.EnableAcceleratedNetworking
	enable_ip_forwarding = local.EnableIpForwarding
}
 
resource "azurerm_network_interface" "Eth2" {
	name = local.Eth2Name
	location = local.ResourceGroupLocation
	resource_group_name = local.ResourceGroupName
	tags = {
		Owner = local.UserEmailTag
		Project = local.UserProjectTag
		ResourceGroup = local.ResourceGroupName
		Location = local.ResourceGroupLocation
	}
	ip_configuration {
		name = "ipconfig1"
		private_ip_address = local.Eth2IpAddresses[0]
		private_ip_address_allocation = "Static"
		subnet_id = local.Eth2SubnetId
		primary = "true"
		private_ip_address_version = "IPv4"
	}
	ip_configuration {
		name = "ipconfig2"
		private_ip_address = local.Eth2IpAddresses[1]
		private_ip_address_allocation = "Static"
		subnet_id = local.Eth2SubnetId
		primary = "false"
		private_ip_address_version = "IPv4"
	}
	ip_configuration {
		name = "ipconfig3"
		private_ip_address = local.Eth2IpAddresses[2]
		private_ip_address_allocation = "Static"
		subnet_id = local.Eth2SubnetId
		primary = "false"
		private_ip_address_version = "IPv4"
	}
	ip_configuration {
		name = "ipconfig4"
		private_ip_address = local.Eth2IpAddresses[3]
		private_ip_address_allocation = "Static"
		subnet_id = local.Eth2SubnetId
		primary = "false"
		private_ip_address_version = "IPv4"
	}
	ip_configuration {
		name = "ipconfig5"
		private_ip_address = local.Eth2IpAddresses[4]
		private_ip_address_allocation = "Static"
		subnet_id = local.Eth2SubnetId
		primary = "false"
		private_ip_address_version = "IPv4"
	}
	ip_configuration {
		name = "ipconfig6"
		private_ip_address = local.Eth2IpAddresses[5]
		private_ip_address_allocation = "Static"
		subnet_id = local.Eth2SubnetId
		primary = "false"
		private_ip_address_version = "IPv4"
	}
	ip_configuration {
		name = "ipconfig7"
		private_ip_address = local.Eth2IpAddresses[6]
		private_ip_address_allocation = "Static"
		subnet_id = local.Eth2SubnetId
		primary = "false"
		private_ip_address_version = "IPv4"
	}
	ip_configuration {
		name = "ipconfig8"
		private_ip_address = local.Eth2IpAddresses[7]
		private_ip_address_allocation = "Static"
		subnet_id = local.Eth2SubnetId
		primary = "false"
		private_ip_address_version = "IPv4"
	}
	ip_configuration {
		name = "ipconfig9"
		private_ip_address = local.Eth2IpAddresses[8]
		private_ip_address_allocation = "Static"
		subnet_id = local.Eth2SubnetId
		primary = "false"
		private_ip_address_version = "IPv4"
	}
	ip_configuration {
		name = "ipconfigA"
		private_ip_address = local.Eth2IpAddresses[9]
		private_ip_address_allocation = "Static"
		subnet_id = local.Eth2SubnetId
		primary = "false"
		private_ip_address_version = "IPv4"
	}
	dns_servers = []
	enable_accelerated_networking = local.EnableAcceleratedNetworking
	enable_ip_forwarding = local.EnableIpForwarding
}

resource "azurerm_public_ip" "Eth0PublicIpAddress" {
	name = local.Eth0PublicIpAddressName
	location = local.ResourceGroupLocation
	resource_group_name = local.ResourceGroupName
	tags = {
		Owner = local.UserEmailTag
		Project = local.UserProjectTag
		ResourceGroup = local.ResourceGroupName
		Location = local.ResourceGroupLocation
	}
	ip_version = "IPv4"
	allocation_method = "Static"
	idle_timeout_in_minutes = 4
	domain_name_label = local.DnsLabel
}

resource "random_string" "RandomString" {
	length = 16
}