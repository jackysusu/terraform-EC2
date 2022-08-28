output "ami_name"{
  value = aws_instance.app_server.*.ami
}

output "public_ip"{
  value = aws_instance.app_server.*.public_ip
}

output "subnet_id"{
  value = aws_instance.app_server.*.subnet_id
}

output "var_out"{
  value = var.instance_tags
}