# eks-kubeflow

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks"></a> [eks](#module\_eks) | terraform-aws-modules/eks/aws | 19.21.0 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | ~> 5.0 |
| <a name="module_wireguard_instance"></a> [wireguard\_instance](#module\_wireguard\_instance) | terraform-aws-modules/ec2-instance/aws | 5.6.0 |

## Resources

| Name | Type |
|------|------|
| [aws_ebs_volume.wireguard_ebs_volume](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ebs_volume) | resource |
| [aws_iam_instance_profile.wireguard_profile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_policy.ecr_kubeflow_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.wireguard_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.wireguard_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy_attachment.ecr_kubeflow_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_security_group.ecr_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.wireguard_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_volume_attachment.wireguard_ebs_att](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/volume_attachment) | resource |
| [aws_vpc_endpoint.ecr_api](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint.ecr_dkr](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint.s3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_iam_policy_document.ecr_kubeflow_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_KEYCLOAK_USER_PASSWORD"></a> [KEYCLOAK\_USER\_PASSWORD](#input\_KEYCLOAK\_USER\_PASSWORD) | Keycloak password passed in from Bitbucket Secured Variable | `string` | n/a | yes |
| <a name="input_WG_PRIVATE_KEY"></a> [WG\_PRIVATE\_KEY](#input\_WG\_PRIVATE\_KEY) | Wireguard Private Key passed in from Bitbucket Secured Variable | `string` | n/a | yes |
| <a name="input_WG_PUBLIC_KEY"></a> [WG\_PUBLIC\_KEY](#input\_WG\_PUBLIC\_KEY) | Wireguard Public Key passed in from Bitbucket Secured Variable | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Denotes the environment you want to deploy to (either dev or prod) | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
| <a name="output_vpc_private_subnets"></a> [vpc\_private\_subnets](#output\_vpc\_private\_subnets) | List of IDs of private subnets |
| <a name="output_vpc_public_subnets_cidr_blocks"></a> [vpc\_public\_subnets\_cidr\_blocks](#output\_vpc\_public\_subnets\_cidr\_blocks) | List of cidr\_blocks of public subnets |
| <a name="output_wg_security_group_id"></a> [wg\_security\_group\_id](#output\_wg\_security\_group\_id) | The ID of the security group |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
