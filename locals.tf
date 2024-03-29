locals {
	AdminPassword = random_string.RandomString.result
	AdminUserName = var.AdminUserName
	DisablePasswordAuthentication = var.DisablePasswordAuthentication
	DnsLabel = "${local.Preamble}-dns"
	EnableAcceleratedNetworking = var.EnableAcceleratedNetworking
	EnableIpForwarding = var.EnableIpForwarding
	Eth0IpAddress = var.Eth0IpAddress
	Eth0Name = "${local.Preamble}-eth0"
	Eth0PublicIpAddressName = "${local.Preamble}-eth0-public-ip"
	Eth0SubnetId = var.Eth0SubnetId
	Eth1IpAddresses = var.Eth1IpAddresses
	Eth1Name = "${local.Preamble}-eth1"
	Eth1SubnetId = var.Eth1SubnetId
	Eth2Name = "${local.Preamble}-eth2"
	Eth2IpAddresses = var.Eth2IpAddresses
	Eth2SubnetId = var.Eth2SubnetId
	ImageSku = var.ImageSku
	ImageVersion = var.ImageVersion
	InstanceId = var.InstanceId
	InstanceName = "${local.Preamble}-instance"
	Preamble = "${local.UserLoginTag}-${local.UserProjectTag}-${local.Tag}-${local.Version}-${local.InstanceId}"
	ResourceGroupLocation = var.ResourceGroupLocation
	ResourceGroupName = var.ResourceGroupName
	SharedImageGalleryName = var.SharedImageGalleryName
	SharedImageGalleryResourceGroupName = var.SharedImageGalleryResourceGroupName
	Tag = var.Tag
	UserEmailTag = var.UserEmailTag
	UserLoginTag = var.UserLoginTag
	UserProjectTag = var.UserProjectTag
	Version = var.Version
	VmSize = var.VmSize
}