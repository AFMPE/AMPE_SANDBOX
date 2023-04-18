# ---------------
# CREATE THE RG
# ---------------
module "rg" {
  source = "azurenoops/overlays-resource-group/azurerm"
  version = "~> 1.0"

  // Resource group name and location
  location       = var.location # This is the short location name (e.g. "eus")
  org_name       = var.org_name
  environment    = var.environment
  workload_name  = var.workload_name
  use_location_short_name = false
  custom_rg_name = local.resource_group_name

  // Enable resource locks
  enable_resource_locks = var.enable_resource_locks
  lock_level            = var.lock_level

  // Add tags
  add_tags = var.add_tags
}