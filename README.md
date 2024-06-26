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
| <a name="module_log_analytics_workspace"></a> [log\_analytics\_workspace](#module\_log\_analytics\_workspace) | app.terraform.io/hcta-azure-dev/log_analytics_workspace/azurerm | 1.0.1 |
| <a name="module_rg"></a> [rg](#module\_rg) | app.terraform.io/hcta-azure-dev/rg/azurerm | 1.0.0 |
| <a name="module_vnet"></a> [vnet](#module\_vnet) | app.terraform.io/hcta-azure-dev/vnet/azurerm | 3.0.2 |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_all_resource_groups"></a> [all\_resource\_groups](#output\_all\_resource\_groups) | All resource groups created by the resource\_group module |
| <a name="output_law_ids"></a> [law\_ids](#output\_law\_ids) | Map of the Log Analytics Workspace ids |
| <a name="output_law_names"></a> [law\_names](#output\_law\_names) | Map of the Log Analytics Workspace names |
| <a name="output_specific_subnet_id"></a> [specific\_subnet\_id](#output\_specific\_subnet\_id) | value of the specific\_subnet\_id output from the vnet module |
| <a name="output_subnet_ids"></a> [subnet\_ids](#output\_subnet\_ids) | value of the subnet\_ids output from the vnet module |
| <a name="output_vnet_id"></a> [vnet\_id](#output\_vnet\_id) | value of the vnet\_id output from the vnet module |
| <a name="output_vnet_name"></a> [vnet\_name](#output\_vnet\_name) | value of the vnet\_name output from the vnet module |
