module "gce-container" {
  source = "gcr.io/tooploox-302310/tpflask"


    container = {
        image="gcr.io/tooploox-302310/tpflask"
        
    }
}

resource "google_compute_instance" "main" {
  name         = "super-vmka-20212001"
  machine_type = "n1-standard-2"
  zone         = "us-central1-b"
boot_disk {
    initialize_params {
      image = module.gce-container.source_image
    }
  }
network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}