resource "google_compute_network" "vpc_network" {
  name = "vpc-network"
  project = "usc1cl01"
  auto_create_subnetworks = false
}

