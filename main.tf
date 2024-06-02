locals {
  data                    = jsondecode(file("./ccoe/rg.json"))
  vnet_settings           = jsondecode(file("./network/network.json"))
  log_analytics_workspace = jsondecode(file("./ccoe/log_analytics_workspace.json")) 
}

module "rg" {
  source  = "app.terraform.io/hcta-azure-dev/rg/azurerm"
  version = "1.0.0"

  resource_groups = local.data.resource_groups
}

module "vnet" {
  source   = "app.terraform.io/hcta-azure-dev/vnet/azurerm"
  version  = "3.0.2"
  for_each = { for k, v in local.vnet_settings : k => v }

  vnet_name      = each.value.vnet_name
  address_space  = each.value.address_space
  location       = each.value.location
  resource_group = lookup(module.rg.rg_name, "${each.value.resource_group_name}", "")
  tags           = each.value.tags
  subnets        = each.value.subnets

  depends_on = [module.rg]

}

module "log_analytics_workspace" {
  source  = "app.terraform.io/hcta-azure-dev/log_analytics_workspace/azurerm"
  version = "1.0.1"
  
  workspaces = local.log_analytics_workspace

  depends_on = [module.rg]
}
