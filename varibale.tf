# add this, then move it to variables.tf
variable "env" {
  type        = string
  default     = "update-dev"
  description = "this is a type"
}

variable "ami_id" {}

variable "instance_type" {}

variable "key_name" {}

variable "ec2_name" {}

variable "sg_name" {}

variable "vpc_name" {}

variable "subnet_name" {}