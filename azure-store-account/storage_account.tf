resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location

  tags = local.common_tags
}

resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = var.account_tier
  account_replication_type = "LRS"

  tags = local.common_tags
}

resource "azurerm_storage_container" "storage_container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}