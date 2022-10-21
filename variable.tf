variable "ami" {
  default = "ami-0fd8802f94ed1c969"
}
variable "subnet_id" {
  default = "subnet-0999e7faa22e4f1df"
}
variable "iam_instance_profile" {
  default = "CodeDeployDemo-EC2-Instance-Profile"
}
variable "bucket_url" {
  default = "s3://awss3clonebucket/hetvi/"
}
variable "security_groups" {
  type    = list(string)
  default = ["sg-0da1c8ea034524030"]
}
variable "key_name" {}
variable "instance_name" {}
variable "instance_type" {}
