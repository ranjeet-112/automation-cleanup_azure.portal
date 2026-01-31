variable "automation_schedules" {
  type = map(object({
    schedule_name       = string
    resource_group_name = string
    automation_account  = string
    runbook_name        = string
  }))
}