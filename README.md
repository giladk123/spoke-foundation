## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.2 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.104.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_foundation"></a> [foundation](#module\_foundation) | app.terraform.io/hcta-azure-dev/foundation/azurerm | 1.0.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_all_resource_groups"></a> [all\_resource\_groups](#output\_all\_resource\_groups) | All resource groups created by the resource\_group module |
| <a name="output_subscription_info"></a> [subscription\_info](#output\_subscription\_info) | The ID and name of the subscription |
