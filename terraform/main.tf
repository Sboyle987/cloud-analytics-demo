provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_project_service" "project_services" {
  for_each           = toset(local.services)
  project            = var.project_id
  service            = each.value
  disable_on_destroy = false
}
