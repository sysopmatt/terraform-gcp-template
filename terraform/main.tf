
terraform {
  backend "gcs" {
    prefix = "template" # THIS IS THE FOLDER IN THE BUCKET
  }
}

provider "google" {
  project = var.project
  region  = var.region
}
