resource "google_storage_bucket" "gcs_bucket" {
  name = "lab-stack-gcp"
  location = var.region
}