# Configura o provedor do GCP e autentica usando o arquivo de credenciais.

provider "google" {
  project = var.project
  region  = var.region
  credentials = file(var.credentials_file)
}

