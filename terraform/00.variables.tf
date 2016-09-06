/* will prompt after checking TF_VAR_access_key environment variable */
variable "access_key" {
  description = "AWS access key"
}

/* will prompt after checking TF_VAR_secret_key environment variable */
variable "secret_key" { 
  description = "AWS secret access key"
}

variable "region"     { 
  description = "AWS region"
  default     = "eu-west-1"
}

variable "vpc_cidr" {
  description = "CIDR for VPC"
  default     = "10.128.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for public subnet"
  default     = "10.128.0.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR for private subnet"
  default     = "10.128.1.0/24"
}

/* Ubuntu 14.04 amis by region
   type can be inferred by the default but my linter likes it set explicitly */
variable "amis" {
  type = "map"
  description = "Base AMI to launch the instances with"
  default = {
    eu-west-1 = "ami-a7412ad4"
    us-east-1 = "ami-a6b8e7ce"
  }
}
