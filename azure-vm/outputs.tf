output "vm_ip" {
  description = "VM IP on Azure"
  value       = azurerm_public_ip.public_ip.ip_address
}