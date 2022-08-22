provider "google" {
project = var.project_id
#region  = var.region
credentials = file("/credential.json")
}

# Create a GCS Bucket
resource "google_storage_bucket" "my_bucket" {
name     = var.bucket_name
location = var.region
}
