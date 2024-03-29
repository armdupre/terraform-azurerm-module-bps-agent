variable "AdminUserName" {
	default = "azure"
	description = "Id of the VM administrator account"
	type = string
}

variable "DisablePasswordAuthentication" {
	default = false
	description = "Disable SSH password auth in favor of key-based auth"
	type = bool
}

variable "EnableAcceleratedNetworking" {
	default = true
	description = "Enables SR-IOV on supported VMs to improve networking performance"
	type = bool
}

variable "EnableIpForwarding" {
	default = true
	description = "Enables forwarding of network traffic to an address not assigned to VM"
	type = bool
}

variable "Eth0IpAddress" {
	default = "10.0.10.11"
	description = "Private ip address associated with the first network interface"
	type = string
}

variable "Eth0SubnetId" {
	description = "Id of the subnet associated with the first network interface"
	type = string
}

variable "Eth1IpAddresses" {
	default = ["10.0.2.12", "10.0.2.13", "10.0.2.14", "10.0.2.15", "10.0.2.16", "10.0.2.17", "10.0.2.18", "10.0.2.19", "10.0.2.20", "10.0.2.21"]
	description = "Private ip addresses associated with the second network interface"
	type = list(string)
}

variable "Eth1SubnetId" {
	description = "Id of the subnet associated with the second network interface"
	type = string
}

variable "Eth2IpAddresses" {
	default = ["10.0.3.12", "10.0.3.13", "10.0.3.14", "10.0.3.15", "10.0.3.16", "10.0.3.17", "10.0.3.18", "10.0.3.19", "10.0.3.20", "10.0.3.21"]
	description = "Private ip addresses associated with the third network interface"
	type = list(string)
}

variable "Eth2SubnetId" {
	description = "Id of the subnet associated with the third network interface"
	type = string
}

variable "ImageSku" {
	default = "keysight-breakingpoint-virtual-blade"
	description = "An instance of an offer, such as a major release of a distribution."
	type = string
}

variable "ImageVersion" {
	default = "10.0.1"
	description = "The version number of an image SKU."
	type = string
}

variable "InstanceId" {
	default = "agent"
	description = "Id of the instance of this module that ensures uniqueness"
	type = string
}

variable "ResourceGroupLocation" {
	default = "East US"
	description = "Location of container metadata and control plane operations"
	type = string
}

variable "ResourceGroupName" {
	description = "Id of container that holds related resources that you want to manage together"
	type = string
}

variable "SharedImageGalleryName" {
	description = "Id of gallery that contains the application software image used by the deployment"
	type = string
}

variable "SharedImageGalleryResourceGroupName" {
	description = "Id of container that contains the application software image gallery"
	type = string
}

variable "Tag" {
	default = "bps"
	description = "App ID tag of application using the deployment"
	type = string
}

variable "UserEmailTag" {
	default = "terraform@example.com"
	description = "Email address tag of user creating the deployment"
	type = string
	validation {
		condition = length(var.UserEmailTag) >= 14
		error_message = "UserEmailTag minimum length must be >= 14."
	}
}

variable "UserLoginTag" {
	default = "terraform"
	description = "Login ID tag of user creating the deployment"
	type = string
	validation {
		condition = length(var.UserLoginTag) >= 4
		error_message = "UserLoginTag minimum length must be >= 4."
	}
}

variable "UserProjectTag" {
	default = "module"
	description = "Project tag of user creating the deployment"
	type = string
}

variable "Version" {
	default = "10-00-p1"
	description = "Versioning of the application using the deployment"
	type = string
}

variable "VmSize" {
	default = "Standard_F8s_v2"
	description = "Category, series and instance specifications associated with the VM"
	type = string
	validation {
		condition = contains([	"Standard_F4s_v2",	"Standard_F8s_v2",	"Standard_F16s_v2"
							], var.VmSize)
		error_message = <<EOF
VmSize must be one of the following sizes:
	Standard_F4s_v2, Standard_F8s_v2, Standard_F16s_v2
		EOF
	}
}