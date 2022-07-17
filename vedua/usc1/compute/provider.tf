#../../../../templete/common/provider.tf
terraform {
  required_providers {
    google = {
      version = ">= 3.50.0"
    }
    google-beta = {
      version = ">= 3.50.0"
    }
  }
}
provider "google" {
  credentials = file("/credential.json")
}

