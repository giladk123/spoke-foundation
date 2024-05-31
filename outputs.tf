# output "subscription_info" {
#   value       = subscription_id
#   description = "The ID and name of the subscription"
# }

output "all_resource_groups" {
  value       = module.foundation
  description = "All resource groups created by the resource_group module"
}

output "vnet_id" {
  value = module.vnet.vnet.vnet_id
}

output "vnet_name" {
  value = module.vnet.vnet.vnet_name
}

output "subnet_ids" {
  value = module.vnet.vnet.subnet_ids
}

output "specific_subnet_id" {
  value = lookup(module.vnet.vnet.subnet_ids, "blob", "")
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