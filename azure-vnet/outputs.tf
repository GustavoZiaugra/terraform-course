output "subnet_id" {
    description = "Subnet ID"
    value = azurerm_subnet.subnet.id
}

output "security_group_id" {
    description = "Value of Security Group ID"
    value = azurerm_network_security_group.nsg.id
}