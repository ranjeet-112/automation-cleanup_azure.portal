resource "azurerm_automation_runbook" "runbook" {
  for_each = var.runbooks

  name                    = each.value.name
  location                = each.value.location
  resource_group_name     = each.value.resource_group_name
  automation_account_name = each.value.automation_account

  runbook_type = "PowerShell"
  log_progress = true
  log_verbose  = true

  # ✅ Use path.root instead of path.module
   content = file("${path.root}/${each.value.script_path}")
}
