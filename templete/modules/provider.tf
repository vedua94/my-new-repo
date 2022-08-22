terraform {
  required_providers {
    google = {
#      credentials = file("/credential.json")
      version = ">= 3.50.0"
    }
    google-beta = {
      version = ">= 3.50.0"
    }
  }
}

