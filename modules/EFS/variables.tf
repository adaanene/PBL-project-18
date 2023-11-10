variable "tags" {
  description = "A mapping of tags to assign to all resources."
  type        = map(string)
  default     = {}
}

variable "account_no" {
  description = "IAM user account number"
  type = number
  
}
