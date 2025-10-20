resource "azurerm_resource_group" "resource_group" {
    name = var.resource_group_name
    location = var.location
}

resource "azurerm_storage_account" "sa" {
    name = "stterraformlocalstackmanagement"
    resource_group_name = azurerm_resource_group.resource_group.name
    location = azurerm_resource_group.resource_group.location
    account_tier = var.account_tier
    account_replication_type = "LRS"
}

resource "azurerm_storage_container" "storage_container" {
    name = "terraform-localstack-management"
    storage_account_name = azurerm_storage_account.sa.name
    container_access_type = "private"
}