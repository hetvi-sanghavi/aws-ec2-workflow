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
}