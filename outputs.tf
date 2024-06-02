
# output "all_resource_groups" {
#   value       = module.rg
#   description = "All resource groups created by the resource_group module"
# }

# output "vnet_id" {
#   value = module.vnet.vnet.vnet_id
#   description = "value of the vnet_id output from the vnet module"
# }

# output "vnet_name" {
#   value = module.vnet.vnet.vnet_name
#   description = "value of the vnet_name output from the vnet module"
# }

# output "subnet_ids" {
#   value = module.vnet.vnet.subnet_ids
#   description = "value of the subnet_ids output from the vnet module"
# }

# output "specific_subnet_id" {
#   value = lookup(module.vnet.vnet.subnet_ids, "blob", "")
#   description = "value of the specific_subnet_id output from the vnet module"
# }

# output "law_name" {
#   value = module.log_analytics_workspace.law_name
#   description = "value of the law_name output from the log_analytics_workspace module"
# }

# output "law_id" {
#   value = module.log_analytics_workspace.law_id
#   description = "value of the law_id output from the log_analytics_workspace module"
# }

output "subscription_id" {
  value       = module.subscription.subscription_id
  description = "The ID of the created subscription."
}

# Example of using the lookup function to get a specific resource group name and location
# output "specific_resource_group_name" {
#   description = "The name of a specific resource group"
#   value       = lookup(module.resource_group.rg_name, "we-ydev-azus-opdx-marketing-rg", "")
# }

# output "specific_rg_location" {
#   description = "The location of a specific resource group"
#   value       = lookup(module.resource_group.rg_location, "rg1", "")
# }