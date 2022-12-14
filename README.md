## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ec2"></a> [ec2](#module\_ec2) | ./ec2 | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | n/a | `string` | `"ami-0fd8802f94ed1c969"` | no |
| <a name="input_bucket_url"></a> [bucket\_url](#input\_bucket\_url) | n/a | `string` | `"s3://awss3clonebucket/"` | no |
| <a name="input_ebs_att_device_name"></a> [ebs\_att\_device\_name](#input\_ebs\_att\_device\_name) | The device name to expose to the instance (for example, /dev/sdh or xvdh) | `string` | `"/dev/sdh"` | no |
| <a name="input_ebs_volume_availability_zone"></a> [ebs\_volume\_availability\_zone](#input\_ebs\_volume\_availability\_zone) | n/a | `string` | `"eu-west-1a"` | no |
| <a name="input_ebs_volume_size"></a> [ebs\_volume\_size](#input\_ebs\_volume\_size) | The size of the drive in GiBs. | `number` | `1` | no |
| <a name="input_iam_instance_profile"></a> [iam\_instance\_profile](#input\_iam\_instance\_profile) | n/a | `string` | `"CodeDeployDemo-EC2-Instance-Profile"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | n/a | `string` | `"t2.micro"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | n/a | `string` | `"test"` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"eu-west-1"` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | n/a | `list(string)` | <pre>[<br>  "sg-0da1c8ea034524030"<br>]</pre> | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | n/a | `string` | `"subnet-0999e7faa22e4f1df"` | no |
| <a name="input_ticket_number"></a> [ticket\_number](#input\_ticket\_number) | n/a | `any` | n/a | yes |
| <a name="input_user_name"></a> [user\_name](#input\_user\_name) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_ip"></a> [instance\_ip](#output\_instance\_ip) | n/a |
| <a name="output_instance_name"></a> [instance\_name](#output\_instance\_name) | n/a |
