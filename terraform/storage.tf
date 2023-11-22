# GCS Storage Bucket
resource "google_storage_bucket" "demo_bucket" {
  name          = "cloud_analytics_demo_bucket"
  project       = var.project_id
  location      = var.region
  force_destroy = true
}

# BigQuery Dataset
resource "google_bigquery_dataset" "demo_dataset" {
  dataset_id = "demo_dataset"
}

# BigQuery Table
resource "google_bigquery_table" "demo_table" {
  dataset_id = google_bigquery_dataset.demo_dataset.dataset_id
  table_id   = "demo_table"
  depends_on = [google_bigquery_dataset.demo_dataset]
}
