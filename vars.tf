variable "region" {
  default = "eu-west-1"
}
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
  default = "s3://awss3clonebucket/"
}
variable "security_groups" {
  type    = list(string)
  default = ["sg-0da1c8ea034524030"]
}
variable "key_name" {
  default = "test"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "availability_zone" {
  default     = "eu-west-1c"
  description = "Pass the subnet availability zone"
}
variable "ebs_volume_size" {
  default     = 1
  description = "The size of the drive in GiBs."
}
variable "ebs_att_device_name" {
  default     = "/dev/sdh"
  description = "The device name to expose to the instance (for example, /dev/sdh or xvdh)"
}
variable "user_name" {
  default = "user_name"
}
variable "jira_url" {
  default = "https://hetvi.atlassian.net/"
}
variable "ticket_number" {}
variable "env" {
  default = "IA"
}