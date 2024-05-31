locals {
  data          = jsondecode(file("./foundation/rg.json"))
  vnet_settings = jsondecode(file("./network/network.json"))
}
module "foundation" {
  source  = "app.terraform.io/hcta-azure-dev/foundation/azurerm"
  version = "1.0.0"

  resource_groups = local.data.resource_groups
  subscription_id = local.data.subscription.id 
}

module "vnet" {
  source  = "app.terraform.io/hcta-azure-dev/vnet/azurerm"
  version = "3.0.2"
  for_each = { for k, v in local.vnet_settings : k => v }

  vnet_name      = each.value.vnet_name
  address_space  = each.value.address_space
  location       = each.value.location
  resource_group = lookup(module.foundation.rg_name, "${each.value.resource_group_name}", "")
  tags           = each.value.tags
  subnets        = each.value.subnets

  depends_on = [module.foundation]

}