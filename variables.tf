variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "private_subnet_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
  description = "List of CIDR blocks for private subnets"
}

variable "public_subnet_cidr" {
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
  description = "List of CIDR blocks for public subnets"
}

variable "kubernetes_version" {
  default     = "1.30"
  description = "kubernetes version"
}