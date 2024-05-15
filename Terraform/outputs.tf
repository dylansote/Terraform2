output "subnet1_id" {
  description = "ID de la primera subnet"
  value       = module.network.subnet1_id
}

output "subnet2_id" {
  description = "ID de la segunda subnet"
  value       = module.network.subnet2_id
}

output "instance1_id" {
  description = "ID de la primera instancia"
  value       = aws_instance.this.id
}

output "instance2_id" {
  description = "ID de la segunda instancia"
  value       = aws_instance.this.id
}