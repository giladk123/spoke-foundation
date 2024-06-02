locals {
  data                    = jsondecode(file("./ccoe/rg.json"))
  vnet_settings           = jsondecode(file("./network/network.json"))
  log_analytics_workspace = jsondecode(file("./ccoe/log_analytics_workspace.json"))
  subscription            = jsondecode(file("./ccoe/subscription.json"))  
}

module "subscription" {
  source  = "app.terraform.io/hcta-azure-dev/subscription/azurerm"
  version = "1.0.0"

  subscription_name    = local.subscription.subscription_name
  billing_account_name = local.subscription.billing_account_name
  billing_profile_name = local.subscription.billing_profile_name
  invoice_section_name = local.subscription.invoice_section_name
}
# module "rg" {
#   source  = "app.terraform.io/hcta-azure-dev/rg/azurerm"
#   version = "1.0.0"

#   resource_groups = local.data.resource_groups
# }

# module "vnet" {
#   source   = "app.terraform.io/hcta-azure-dev/vnet/azurerm"
#   version  = "3.0.2"
#   for_each = { for k, v in local.vnet_settings : k => v }

#   vnet_name      = each.value.vnet_name
#   address_space  = each.value.address_space
#   location       = each.value.location
#   resource_group = lookup(module.rg.rg_name, "${each.value.resource_group_name}", "")
#   tags           = each.value.tags
#   subnets        = each.value.subnets

#   depends_on = [module.rg]

# }

# module "log_analytics_workspace" {
#   source  = "app.terraform.io/hcta-azure-dev/log_analytics_workspace/azurerm"
#   version = "1.0.0"

#   law_name                   = local.log_analytics_workspace.law_name
#   rg_location                = lookup(module.rg.rg_location, "${local.log_analytics_workspace.location}", "")
#   rg_name                    = lookup(module.rg.rg_name, "${local.log_analytics_workspace.resource_group_name}", "")
#   sku                        = local.log_analytics_workspace.sku
#   retention_in_days          = local.log_analytics_workspace.retention_in_days
#   internet_ingestion_enabled = local.log_analytics_workspace.internet_ingestion_enabled
#   internet_query_enabled     = local.log_analytics_workspace.internet_query_enabled
#   tags                       = local.log_analytics_workspace.tags

#   depends_on = [module.rg]

# }
