output "instance_name" {
  value = aws_instance.ec2_public.tags
}
output "instance_ip" {
  value = aws_instance.ec2_public.public_ip
}