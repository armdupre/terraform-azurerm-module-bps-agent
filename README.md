# module-bps-agent/azurerm

## Description
Terraform module for BreakingPoint agent deployment on Microsoft Azure

## Deployment
This module creates a single instance having three network interfaces.

## Usage
```tf
module "Agent" {
	source  = "git::https://github.com/armdupre/terraform-azurerm-module-bps-agent.git"
	Eth0SubnetId = module.Vnet.PublicSubnet.id
	Eth1SubnetId = module.Vnet.Private1Subnet.id
	Eth2SubnetId = module.Vnet.Private2Subnet.id
	ResourceGroupName = azurerm_resource_group.ResourceGroup.name
}
```