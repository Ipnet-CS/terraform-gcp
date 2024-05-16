# Outputs para exibir informações úteis após a execução

output "instance_name" {
  description = "The name of the VM instance"
  value       = google_compute_instance.vm_instance.name
}

output "instance_zone" {
  description = "The zone of the VM instance"
  value       = google_compute_instance.vm_instance.zone
}

output "instance_public_ip" {
  description = "The public IP address of the VM instance"
  value       = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
}
