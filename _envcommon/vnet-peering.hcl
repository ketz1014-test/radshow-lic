# -----------------------------------------------------
# Common: VNet Peering
# Bidirectional peering between primary and secondary VNets
# Only applies when enable_dr = true
# -----------------------------------------------------
terraform {
  source = "git::https://github.com/ketz1014-test/radshow-def.git//modules/vnet-peering?ref=${local.env_vars.locals.environment == "PRD01" ? "v1.0.0" : "main"}"
}

locals {
  env_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))
}

inputs = {
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
}
