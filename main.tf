locals {
  data = jsondecode(file("./cac/rg.json"))
}
module "foundation" {
  source  = "app.terraform.io/hcta-azure-dev/foundation/azurerm"
  version = "1.0.0"

  resource_groups = local.data.resource_groups
  subscription_id = var.subscription_id
}