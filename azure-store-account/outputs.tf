output "storage_account_id" {
  description = "Value of the storage account id"
  value       = azurerm_storage_account.sa.id
}

output "primary_storage_account_key" {
  description = "value of the primary storage account key"
  value       = azurerm_storage_account.sa.primary_access_key
  sensitive   = true
}