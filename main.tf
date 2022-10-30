module "ec2" {
  source                       = "./ec2"
  ami                          = var.ami
  instance_type                = var.instance_type
  key_name                     = var.key_name
  subnet_id                    = var.subnet_id
  iam_instance_profile         = var.iam_instance_profile
  bucket_url                   = var.bucket_url
  security_groups              = var.security_groups
  ebs_att_device_name          = var.ebs_att_device_name
  ebs_volume_availability_zone = var.ebs_volume_availability_zone
  ebs_volume_size              = var.ebs_volume_size
  tags = {
    user_name     = var.user_name
    ticket_number = var.ticket_number
  }
}