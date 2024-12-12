
terraform {
  backend "gcs" {
    prefix = "terraform-gcp-template" # THIS IS THE FOLDER IN THE BUCKET
  }
}

provider "google" {
  project = var.project
  region  = var.region
}
