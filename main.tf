resource "kubernetes_namespace" "example" {
  metadata {
    annotations = var.annotations
    labels = var.labels
    name   = var.name
  }
}

variable "annotations" {
  description = "Please provide annotation"
  type = map
  default = {}
}

variable "labels" {
  description = "Please provide labels"
  type = map
  default = {}