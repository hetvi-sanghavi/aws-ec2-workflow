data "template_file" "user_data" {
  template = file("${path.module}/user_data.tpl")
  vars = {
    bucket_url = var.bucket_url
  }
}
resource "aws_instance" "ec2_public" {
  ami                  = var.ami
  instance_type        = var.instance_type
  subnet_id            = var.subnet_id
  key_name             = var.key_name
  iam_instance_profile = var.iam_instance_profile
  security_groups      = var.security_groups
#  user_data            = data.template_file.user_data.rendered
  user_data       = <<-EOF
Content-Type: multipart/mixed; boundary="//"
MIME-Version: 1.0

--//
Content-Type: text/cloud-config; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="cloud-config.txt"

#cloud-config
cloud-init directives

--//
Content-Type: text/x-shellscript; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="user-data.sh"

#!/bin/bash
sudo apt update
sudo apt install mysql-server -y
sudo systemctl start mysql.service
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
mkdir -p /home/ubuntu/webteamdb
timestamp=$(date '+%Y-%m-%d')
sudo aws s3 cp s3://webteam-files/Prod-${var.env}-Mysqldump/${var.env}-Website-RDS-Backup-${timestamp}.sql.gz /home/ubuntu/webteamdb/${var.env}-Website-RDS-Backup-${timestamp}.sql.gz
--//--
EOF
  availability_zone    = var.availability_zone
  tags                 = var.tags
}

resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = var.availability_zone
  size              = var.ebs_volume_size
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = var.ebs_att_device_name
  volume_id   = aws_ebs_volume.ebs_volume.id
  instance_id = aws_instance.ec2_public.id
}