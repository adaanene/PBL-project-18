variable "master-username" {
  description = "RDS admin username"
  type = string
  
}

variable "master-password" {
  description = "RDS admin password"
  type = string
  
}

variable "tags" {
  description = "A mapping of tags to assign to all resources."
  type        = map(string)
  default     = {}
}
