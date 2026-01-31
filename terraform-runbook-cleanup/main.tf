module "resource_group" {
  source = "../modules/resource_group"
  resource_groups = var.resource_groups
}

module "automation_account" {
  depends_on = [module.resource_group]
  source = "../modules/automation_account"
  automation_accounts = var.automation_accounts
}

module "automation_runbook" {
  depends_on = [module.resource_group, module.automation_account]
  source = "../modules/azure_runbook"
  runbooks = var.runbooks
} 

module "job_schedule" {
  depends_on = [module.resource_group, module.automation_account, module.automation_runbook]
  source = "../modules/job_schedule"
  automation_schedules = var.automation_schedules
}

