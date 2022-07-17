resource "google_compute_subnetwork" "public-subnetwork" {
name = "terraform-subnetwork"
project = "usc1cl01"
ip_cidr_range = "10.2.0.0/16"
region = "us-central1"
network = "vpc-network"
}
