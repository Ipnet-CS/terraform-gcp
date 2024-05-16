# Definição de rede, sub-rede e VM

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = "terraform-subnetwork"
  ip_cidr_range = "10.0.0.0/16"
  region        = var.region
  network       = google_compute_network.vpc_network.name
}

resource "google_compute_instance" "vm_instance" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network    = google_compute_network.vpc_network.name
    subnetwork = google_compute_subnetwork.subnetwork.name

    access_config {
      // Ephemeral public IP
    }
  }

  tags = ["web", "dev"]

  metadata = {
    ssh-keys = "user:ssh-rsa AAA..."
  }

  service_account {
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}
