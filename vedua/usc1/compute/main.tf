resource "google_compute_instance" "myvm1" {
  project                   = "usc1cl01"
  name                      = "myvm1"
  machine_type              = "n1-standard-1"
  hostname                  = "myvm1.com"
  zone                      = "us-central1-a"
  allow_stopping_for_update = true

#  labels = {
#    name  = "myvm1",
#    owner = "ankit",
#    dept  = "it",
#    os    = "centos7"
#  }

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }

  // Local SSD disk
  # scratch_disk {
  #   interface = "SCSI"
  # }

  network_interface {
    network = "vpc-network"
    subnetwork = "terraform-subnetwork"
    subnetwork_project = "usc1cl01"
    access_config {
      // Ephemeral IP
    }
  }

#  metadata = {
#    foo = "bar"
#  }

#  metadata_startup_script = "echo hi > /test.txt"

#  service_account {
#    #  email = "355121593036-compute@developer.gserviceaccount.com"
#    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
#  }
}
