# Create a Compute Engine instance
resource "google_compute_instance" "default" {
  name         = "${var.data-project}-vm"
  machine_type = "f1-micro"
  zone         = "us-west1-a"
  tags         = ["ssh", "http", "https"]

  metadata = {
    user-data = "${data.cloudinit_config.conf.rendered}"
  }

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.default.id

    access_config {
      # Include this section to give the VM an external IP address
    }
  }


}
