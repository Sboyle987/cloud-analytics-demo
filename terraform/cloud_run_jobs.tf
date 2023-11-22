# You must create this first, and publish a container image (see "cloud_run_job" directory) 
# with Docker before creating the Cloud Run Job and Scheduler.
resource "google_artifact_registry_repository" "cloud_run" {
  location      = var.region
  repository_id = "cloud-analytics-demo-repo"
  format        = "DOCKER"
}

# Uncomment after Artifact Registry has been created and image has been published
# resource "google_cloud_run_v2_job" "demo_job" {
#   name     = "demo-job"
#   location = var.region
#   template {
#     template {
#       containers {
#         # Path to image in Google Artifact Registry, you must publish this image with docker before applying this
#         image = "us-west1-docker.pkg.dev/cloud-analytics-demo/cloud-analytics-demo-repo/test-image"
#       }
#     }
#   }
# }

# resource "google_cloud_scheduler_job" "demo_scheduler" {
#   name             = "demo-scheduler"
#   schedule         = "0 1 * * *"
#   time_zone        = "America/New_York"
#   attempt_deadline = "320s"

#   retry_config {
#     retry_count = 1
#   }

#   http_target {
#     http_method = "POST"
#     uri         = "https://us-west1-run.googleapis.com/apis/run.googleapis.com/v1/namespaces/cloud-analytics-demo/jobs/demo-job:run"
#   }
# }
