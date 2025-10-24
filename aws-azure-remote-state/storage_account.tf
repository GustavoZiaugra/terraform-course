resource "azurerm_resource_group" "resource_group" {
  name     = "rg-terraform-localstack-management"
  location = "eastus"

  tags = local.common_tags
}

resource "azurerm_storage_account" "sa" {
  name                     = "terraform"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  blob_properties {
    versioning_enabled = true
  }

  tags = local.common_tags
}

resource "azurerm_storage_container" "storage_container" {
  name                  = "terraform-localstack-management"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"

}