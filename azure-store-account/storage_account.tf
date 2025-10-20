resource "azurerm_resource_group" "resource_group" {
    name = "rg-terraform-localstack-management"
    location = "eastus"
}

resource "azurerm_storage_account" "sa" {
    name = "stterraformlocalstackmanagement"
    resource_group_name = azurerm_resource_group.resource_group.name
    location = azurerm_resource_group.resource_group.location
    account_tier = "Standard"
    account_replication_type = "LRS"
}