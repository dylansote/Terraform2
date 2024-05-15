variable "instance_name" {
  type        = string
  description = "Nombre de la instancia"
}

variable "instance_type" {
  type        = string
  description = "Tipo de instancia"
  default     = "t2.micro"
}

variable "subnet_id" {
  type        = string
  description = "ID de la subnet"
}