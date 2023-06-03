provider "google" {
    project = var.project_id
    region = var.region
}

terraform {
    backend "gcs" {
        bucket = "lab-stack-gcp"
        prefix = "terraform/state"
    }

    required_providers {
      google = {
        source = "hashicorp/google"
        version = "3.67.8"

      }
    }
}