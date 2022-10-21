module "ec2" {
  source        = "./ec2"
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id
  instance_name = var.instance_name
}