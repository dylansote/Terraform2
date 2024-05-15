variable "instance_name" {
  type = string
  description = "Nombre de la primera instancia"
  default = "Instance1"
}

variable "instance_name2" {
  type = string
  description = "Nombre de la segunda instancia"
  default = "Instance2"
}

variable "instance_type" {
  type = string
  description = "Tipo de instancia"
  default = "t2.micro"
}