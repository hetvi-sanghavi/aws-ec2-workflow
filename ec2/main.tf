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
  user_data            = data.template_file.user_data.rendered
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