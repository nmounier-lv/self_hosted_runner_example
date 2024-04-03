variable "environment" {
  type = string
}

variable "project_id" {
  type = string
}

variable "service_accounts" {
  description = "Service accounts in the project"
  type = list(object({
    suffix                     = string
    description                = string
  }))
}