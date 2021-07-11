output "vm_arn" {
    description = "VM ARN"
    value = aws_instance.vm.arn
}

output "vm_public_ip" {
    description = "VM Public IP"
    value = aws_instance.vm.public_ip
}

output "tags_all" {
    description = "Tags All"
    value = aws_instance.vm.tags_all
}