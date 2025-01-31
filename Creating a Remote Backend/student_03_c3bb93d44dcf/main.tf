provider "google" {
  project     = "qwiklabs-gcp-04-40e4596ae26b"
  region      = "us-central1"
}

resource "google_storage_bucket" "test-bucket-for-state" {
  name        = "qwiklabs-gcp-04-40e4596ae26b"
  location    = "US" # Replace with EU for Europe region
  uniform_bucket_level_access = true
  force_destroy = true
}

terraform {
  backend "local" {
    path = "terraform/state/terraform.tfstate"
  }
}