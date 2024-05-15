variable "vpc_id" {
  type        = string
  description = "ID de la VPC donde se creará la subnet"
}

variable "cidr_block" {
  type        = string
  description = "CIDR para la subnet"
}

variable "availability_zone" {
  type        = string
  description = "Zona de disponibilidad para la subnet"
  default     = null
}

variable "map_public_ip_on_launch" {
  type        = bool
  description = "Mapa para asignar IP pública a las instancias que se inicien en la subnet"
  default     = false
}

variable "tags" {
  type        = map(string)
  description = "Etiquetas para la subnet"
  default     = {}
}