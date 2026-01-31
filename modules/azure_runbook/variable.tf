variable "runbooks" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    automation_account  = string
    script_path         = string
  }))
}
