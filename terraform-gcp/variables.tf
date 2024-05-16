# Definição de variáveis que usaremos no projeto

variable "project" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The GCP zone"
  type        = string
  default     = "us-central1-a"
}

variable "credentials_file" {
  description = "The path to the GCP credentials JSON file"
  type        = string
}

variable "instance_name" {
  description = "The name of the VM instance"
  type        = string
  default     = "terraform-instance"
}

variable "machine_type" {
  description = "The type of the VM instance"
  type        = string
  default     = "n1-standard-1"
}

variable "image" {
  description = "The image for the VM instance"
  type        = string
  default     = "debian-cloud/debian-10"
}
