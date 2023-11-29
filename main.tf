resource "kubernetes_namespace" "example" {
  metadata {
    annotations = var.annotations
    labels = var.labels
    name   = var.name
  }
}

resource "kubernetes_resource_quota" "example" {
  metadata {
    name = "terraform-example"
  }
  spec {
    hard = {
      pods = 10
    }
    scopes = ["BestEffort"]
  }
}