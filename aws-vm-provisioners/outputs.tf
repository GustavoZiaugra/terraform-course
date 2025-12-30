output "vm_ip" {
  description = "VM IP on AWS"
  value       = aws_instance.vm.public_ip
}