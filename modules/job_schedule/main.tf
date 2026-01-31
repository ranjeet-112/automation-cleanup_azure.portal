resource "azurerm_automation_schedule" "cron_schedule" {
  for_each = var.automation_schedules

  name                    = each.value.schedule_name
  resource_group_name     = each.value.resource_group_name
  automation_account_name = each.value.automation_account
  frequency               = "Day"
  interval                = 1
  timezone                = "Asia/Kolkata"

  start_time = timeadd(timestamp(), "10m")
}
  
