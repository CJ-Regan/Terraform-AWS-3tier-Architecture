variable "region" {
     type = string
     description = "The AWS region."
   }

variable "instance_type" {
     type = string
     description = "The instance type."
     default = "t2.small"
}   

variable "image_id" {
  description = "the ami"
}

variable "subnet_prefix" {
  description = "cidr block for the subnet"
}

variable "vpc_cidr" {
    description = "cidr block for vpc"
    default = "10.0.0.0/16"
}

variable "allocated_storage" {
    type = number
    description = "The allocated storage for rds"
}

variable "engine_type" {
    type = string
    description = "Engine for the RDS Instance"
}

variable "engine_version" {
    description = "Engine version for the RDS engine type"
}

variable "instance_class" {
    type = string
    description = "The instance class for the RDS instance"
}