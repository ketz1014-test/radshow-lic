# -----------------------------------------------------
# Common: RBAC Role Assignments
# Grants managed identities access to resources
# -----------------------------------------------------
terraform {
  source = "git::https://github.com/ketz1014-test/radshow-def.git//modules/role-assignments?ref=${local.env_vars.locals.environment == "PRD01" ? "v1.0.0" : "main"}"
}

locals {
  env_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))
}
