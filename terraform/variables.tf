variable "region" {
  description = "Value of the aws region"
  type        = string
  default     = "us-west-2"
}

variable "ami" {
  description = "Value of the instance ami"
  type        = string
  default     = "ami-029fdbb88b65e9986"
}

variable "instance_type" {
  description = "Value of the instance type"
  type        = string
  default     = "t2.micro"
}