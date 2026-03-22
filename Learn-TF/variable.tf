variable "input_instance_nos" {
  type = number
  default = 3
}

variable "components" {
   default = ["frontend","postgresql","portfolio-services","auth-service","analytics"]
}