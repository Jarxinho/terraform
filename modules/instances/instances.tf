resource "google_compute_instance" "vm-1" {
  name         = "vm-1"
  machine_type = "n1-standard-2"
  zone         = var.zone
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
 network = "tf-vpc-524764"
	subnetwork = "subnet-01"
  }
}

resource "google_compute_instance" "vm-2" {
  name         = "vm-2"
  machine_type = "n1-standard-2"
  zone         = var.zone
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
 network = "tf-vpc-524764"
	subnetwork = "subnet-02"
  }
}