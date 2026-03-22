variable "components" {
   default = ["frontend","postgresql","portfolio-services","auth-service","analytics"]
}

variable "instance_cnt" {
  description = "No. of EC2 instance"
  type        = number
}

variable "instance_name" {
  description = "Instance name"
  type = string
}