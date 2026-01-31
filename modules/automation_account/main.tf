resource "azurerm_automation_account" "cron_job_automation_account" {
  for_each = var.automation_accounts

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  sku_name            = "Basic"
}

