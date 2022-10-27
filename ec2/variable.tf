variable "ami" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "key_name" {}
variable "iam_instance_profile" {}
variable "bucket_url" {}
variable "security_groups" {
  type = list(string)
}
variable "tags" {
  type = list(string)
}