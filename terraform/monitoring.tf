resource "google_monitoring_notification_channel" "demo_channel" {
  display_name = "Email monitoring demo channel"
  type         = "email"
  labels = {
    email_address = "your-email@example.com"
  }
}

resource "google_monitoring_alert_policy" "demo_errors" {
  project      = var.project_id
  enabled      = true
  display_name = "Cloud Run Job Errors"
  combiner     = "OR"

  conditions {
    display_name = "Cloud Run Job Errors"
    condition_matched_log {
      filter = "resource.labels.project_id=${var.project_id} severity>=ERROR"
    }
  }
  alert_strategy {
    auto_close = "3600s"
    notification_rate_limit {
      period = "300s"
    }
  }
  notification_channels = google_monitoring_notification_channel.demo_channel.*.id
}
