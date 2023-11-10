variable "tags" {
  description = "A mapping of tags to assign to all resources."
  type        = map(string)
  default     = {}
}

variable "ext-alb-sg" {
  description = "Security group for external load balancer"
}

# The public subnets for the ext load balancer
variable "PublicSubnet-1" {
  description = "The first public subnet"
}

variable "PublicSubnet-2" {
  description = "The second public subnet"
}


variable "ip_address_type" {
  type        = string
  description = "IP address for the ALB"

}

variable "load_balancer_type" {
  type        = string
  description = "the type of loadbalancer"
}

variable "name-elb" {
  type        = string
  description = "The name of loadbalancer"
}

variable "vpc_id" {
  type        = string
  description = "The vpc ID"
}

variable "int-alb-sg" {
  description = "Security group for internal load balancer"
}

# The private subnets for the int load balancer
variable "PrivateSubnet-1" {
  description = "The first private subnet"
}

variable "PrivateSubnet-2" {
  description = "The second private subnet"
}

variable "PrivateSubnet-3" {
  description = "The third private subnet"
}

variable "PrivateSubnet-4" {
  description = "The fourth private subnet"
}

variable "name-ilb" {
  type        = string
  description = "The name of loadbalancer"
}

