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

variable "name" {
  type = string
  description = "subnet group name"
}

variable "private_subnets" {
  type        = list
  description = "Private subnets fro DB subnets group"
}

variable "dbname" {
  type = string
  description = "the database name"
}
