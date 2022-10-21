resource "random_string" "ec2_instance_name" {
  length = 3
}
resource "aws_instance" "ec2_public" {
  ami                  = var.ami
  instance_type        = var.instance_type
  subnet_id            = var.subnet_id
  key_name             = var.key_name
  iam_instance_profile = var.iam_instance_profile
  security_groups      = var.security_groups
  user_data            = file("ec2/user_data.sh")
  tags = {
    Name = "${var.instance_name}${random_string.ec2_instance_name.result}"
  }
}