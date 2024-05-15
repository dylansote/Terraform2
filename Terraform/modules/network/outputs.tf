//poder exportar la propiedad, y todos los modulos puedan acceder a ella

output "subnet1_id" {
  description = "ID de la primera subnet"
  value       = module.subnet1.subnet_id
}

output "subnet2_id" {
  description = "ID de la segunda subnet"
  value       = module.subnet2.subnet_id
}