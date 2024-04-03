locals {
  service_accounts = zipmap([for sa in var.service_accounts : sa.suffix], var.service_accounts)
}

module "service_accounts" {
  for_each    = local.service_accounts
  source      = "git::https://github.com/LouisVuitton/gcp_module_tf_service_account.git?ref=v0.0.2"
  project_id  = var.project_id
  env         = var.environment
  short_desc  = each.value.suffix
  description = each.value.description
}