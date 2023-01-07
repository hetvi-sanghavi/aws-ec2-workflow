variable "ami" {}
variable "instance_type" {}
variable "vpc_id" {}
variable "subnet_id" {}
variable "key_name" {}
variable "iam_instance_profile" {}
variable "bucket_url" {}
variable "availability_zone" {}
variable "ebs_volume_size" {}
variable "ebs_att_device_name" {}
variable "tags" {
  type = map(string)
}
variable "env" {}