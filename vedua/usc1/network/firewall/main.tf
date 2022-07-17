resource "google_compute_firewall" "firewall" {
  name    = "terraform-firewall"
  network = "vpc-network"
  project = "usc1cl01"
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "22"]
  }
}
