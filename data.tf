data "azurerm_shared_image_gallery" "SharedImageGallery" {
	name = local.SharedImageGalleryName
	resource_group_name = local.SharedImageGalleryResourceGroupName
}

data "azurerm_shared_image" "SharedImageVersion" {
	name = local.ImageVersion
	name = local.ImageSku
	gallery_name = local.SharedImageGalleryName
	resource_group_name = local.SharedImageGalleryResourceGroupName
}