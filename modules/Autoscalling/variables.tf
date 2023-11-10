variable "tags" {
  description = "A mapping of tags to assign to all resources."
  type        = map(string)
  default     = {}
}

variable "keypair" {
  type = string
  description = "the keypair for the instances"
}

variable "ami" {
    description = "the id of AMI to use for the lauch template"
    type = string

  }
