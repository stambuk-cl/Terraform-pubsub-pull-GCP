variable "project" {
  type        = string
  description = "The project ID to manage the Pub/Sub resources"
}

variable "name_topic" {
  type        = string
  description = "The Pub/Sub topic name"
}

variable "name_subscription" {
  type = string
}

variable "labels" {
  type    = string
  default = ""
}

variable "retain_acked_messages" {
  default = false
}
variable "expiration_policy" {
  default = "300000.5s"
}

variable "ack_deadline_seconds" {
  default = "20"
}

variable "message_retention_duration" {
  default = "1200s"
}
