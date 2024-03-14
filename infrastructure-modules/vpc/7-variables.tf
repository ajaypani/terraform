variable "env" {
  description = "environment"
  type = string
}

variable "vpc_cidr_block" {
  description = "CIDR block"
  type = string
  default = "10.0.0.0/16"
}

variable "azs" {
    description = "av zones"
    type = list(string)
  
}

variable "private_subnets" {
  description = "CIDR ranges for private subnets"
  type = list(string)
}

variable "public_subnets" {
  description = "CIDR ranges for public subnets"
  type = list(string)
}

variable "private_subnet_tags" {
  description = "Private subnet tags."
  type        = map(any)
}

variable "public_subnet_tags" {
  description = "Private subnet tags."
  type        = map(any)
}