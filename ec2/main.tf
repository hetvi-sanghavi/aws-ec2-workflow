resource "random_string" "ec2_instance_name" {
  length = 3
}
resource "aws_instance" "ec2_public" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name
  user_data     = <<-EOF
#!/bin/bash
sudo su
apt-get update
sudo apt-get -y install mysql-server
sudo systemctl start mysql
sudo apt install awscli -y
EOF
  tags = {
    Name ="${var.instance_name}${random_string.ec2_instance_name.result}"
  }
}