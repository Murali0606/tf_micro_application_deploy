output "vpc_id" {
  value = aws_vpc.main.id
}

output "private_subnets" {
  value = aws_subnet.main_private.*.id
}

output "public_subnets" {
  value = aws_subnet.main_public.*.id
}

output "bastion_host" {
  value = aws_instance.bastion.id
}


output "web_host" {
  value = aws_instance.web.id
}


output "app_host" {
  value = aws_instance.app.id
}
