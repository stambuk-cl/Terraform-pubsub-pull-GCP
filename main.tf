resource "google_pubsub_topic" "topic" {
  name    = var.name_topic
  project = var.project
}

resource "google_pubsub_subscription" "subscription" {
  name  = var.name_subscription
  topic = google_pubsub_topic.topic.name

  labels = {
    foo = var.labels
  }

  # 20 minutes
  message_retention_duration = var.message_retention_duration
  retain_acked_messages      = var.retain_acked_messages

  ack_deadline_seconds = var.ack_deadline_seconds


  expiration_policy {
    ttl = var.expiration_policy
  }
}
