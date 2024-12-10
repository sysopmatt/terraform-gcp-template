
terraform {
    backend "gcs" { 
      prefix  = var.data-project
    }
}

provider "google" {
  project = var.project
  region = var.region
}
